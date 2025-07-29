"use client";

import { Button } from "@/components/ui/button";
import { FormSchema } from "@/lib/schema";
import { zodResolver } from "@hookform/resolvers/zod";
import { useForm } from "react-hook-form";
import z from "zod";
import { Form, FormDescription, FormLabel } from "../ui/form";
import { IntakeFormCheckboxes } from "./IntakeFormCheckboxes";
import { CLINICAL_NEEDS, TIME_SLOTS } from "@/lib/constants";
import { IntakeFormSelectors } from "./IntakeFormSelectors";
import { matchClinicians, MatchIntakeDto, UrgencyLevel } from "@lunajoy/engine";
import { useRouter } from "next/navigation";
import { useState } from "react";

export default function IntakeForm() {
  const router = useRouter();
  const form = useForm({
    resolver: zodResolver(FormSchema),
    defaultValues: {
      state: "",
      language: "English",
      gender_preference: "No preference",
      insurance_provider: "",
      appointment_type: "therapy",
      clinical_needs: [],
      preferred_time_slots: [],
      urgency_level: "Flexible",
    },
  });

  async function onSubmit(data: z.infer<typeof FormSchema>) {
    try {
      const matchIntake: MatchIntakeDto = {
        state: data.state,
        language: data.language,
        genderPreference:
          data.gender_preference === "No preference"
            ? undefined
            : data.gender_preference,
        insuranceProvider: data.insurance_provider,
        appointmentType: data.appointment_type.toLowerCase(),
        clinicalNeeds: data.clinical_needs ?? [],
        preferredTimeSlots: data.preferred_time_slots,
        urgencyLevel: (data.urgency_level === "Inmediate (within 3 days)"
          ? "immediate"
          : "flexible") as UrgencyLevel,
      };

      const results = await matchClinicians(matchIntake);

      sessionStorage.setItem("matchResults", JSON.stringify(results));
      sessionStorage.setItem("matchIntake", JSON.stringify(matchIntake));
      router.push("/results");
    } catch (error) {
      console.error("Error matching clinicians:", error);
      alert("Failed to match clinicians. Please try again.");
    }
  }

  const [isMedicationManagement, setIsMedicationManagement] = useState(false);

  return (
    <Form {...form}>
      <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-8">
        <IntakeFormSelectors
          form={form}
          setIsMedicationManagement={setIsMedicationManagement}
        />

        {!isMedicationManagement && (
          <>
            <div className="mb-4">
              <FormLabel className="text-base text-[#43635f] font-semibold font-serif">
                Clinical Needs & Specialities
              </FormLabel>
              <FormDescription className="text-[#43653f]">
                Select all that apply to your situation.
              </FormDescription>
              <IntakeFormCheckboxes
                form={form}
                field_name="clinical_needs"
                dataMap={CLINICAL_NEEDS}
              />
            </div>
          </>
        )}

        <div className="mb-4">
          <FormLabel className="text-base text-[#43635f] font-semibold font-serif">
            Preferred time slots (Optional)
          </FormLabel>
          <FormDescription className="text-[#43653f]">
            When would you prefer to have your appointments?
          </FormDescription>
        </div>

        <IntakeFormCheckboxes
          form={form}
          field_name="preferred_time_slots"
          dataMap={TIME_SLOTS}
        />

        <hr className="my-8 border-t border-gray-300"></hr>

        <Button
          type="submit"
          className="w-full bg-[#ffb21b] text-[#43635f] hover:bg-[#ffb21b]/90 text-xl font-serif py-3"
        >
          Find My Clinicians
        </Button>
      </form>
    </Form>
  );
}
