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

export default function IntakeForm() {
  const form = useForm({
    resolver: zodResolver(FormSchema),
    defaultValues: {
      state: "",
      language: "English",
      gender_preference: "No preference",
      insurance_provider: "",
      appointment_type: "Therapy",
      clinical_needs: [],
      preferred_time_slots: [],
      urgency_level: "Flexible",
    },
  });

  function onSubmit(data: z.infer<typeof FormSchema>) {
    console.log("Form submitted with data:", data);
  }

  return (
    <Form {...form}>
      <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-8">
        <IntakeFormSelectors form={form} />

        <div className="mb-4">
          <FormLabel className="text-base">
            Clinical needs and specialities
          </FormLabel>
          <FormDescription>
            Select all that apply to your situation.
          </FormDescription>
        </div>

        <IntakeFormCheckboxes
          form={form}
          field_name="clinical_needs"
          dataMap={CLINICAL_NEEDS}
        />

        <div className="mb-4">
          <FormLabel className="text-base">
            Preferred time slots (Optional)
          </FormLabel>
          <FormDescription>
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
          className="w-full bg-[#ffb21b] text-[#43635f] hover:bg-[#ffb21b]/90 text-xl py-3"
        >
          Find My Clinicians
        </Button>
      </form>
    </Form>
  );
}
