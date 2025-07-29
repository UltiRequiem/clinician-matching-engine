"use client";

import { Button } from "@/components/ui/button";
import {
  Form,
  FormControl,
  FormDescription,
  FormField,
  FormItem,
  FormLabel,
  FormMessage,
} from "@/components/ui/form";
import { Select } from "@/components/ui/select";
import {
  APPOINTMENT_TYPES,
  GENDER_PREFERENCES,
  INSURANCE_PROVIDERS,
  LANGUAGES,
  STATES,
  URGENCY_LEVELS,
} from "@/lib/constants";
import { zodResolver } from "@hookform/resolvers/zod";
import {
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { useForm } from "react-hook-form";
import z from "zod";

export default function FormComponent() {
  const formSchema = z.object({
    state: z.string().min(1, "State is required"),
    language: z.string().min(1, "Language is required"),
    gender_preference: z.string().optional(),
    insurance_provider: z.string().min(1, "Insurance provider is required"),
    appointment_type: z.string().min(1, "Appointment type is required"),
    urgency_level: z.string().min(1, "Urgency level is required"),
  });

  const form = useForm({
    resolver: zodResolver(formSchema),
    defaultValues: {
      state: "",
      language: "English",
      gender_preference: "No preference",
      insurance_provider: "",
      appointment_type: "Therapy",
      urgency_level: "Flexible",
    },
  });

  function onSubmit(data: z.infer<typeof formSchema>) {
    console.log("Form submitted with data:", data);
  }

  const ParametrizedFormField = ({
    field_name,
    label,
    data,
  }: {
    field_name:
      | "state"
      | "language"
      | "gender_preference"
      | "insurance_provider"
      | "appointment_type"
      | "urgency_level";
    label: string;
    data: string[];
  }) => {
    return (
      <FormField
        control={form.control}
        name={field_name}
        render={({ field }) => (
          <FormItem>
            <FormLabel>{label}</FormLabel>
            <FormControl>
              <Select onValueChange={field.onChange} defaultValue={field.value}>
                <SelectTrigger className="w-full">
                  <SelectValue placeholder="Select a state" />
                </SelectTrigger>
                <SelectContent>
                  {data.map((item, index) => (
                    <SelectItem value={item} key={index}>
                      {item}
                    </SelectItem>
                  ))}
                </SelectContent>
              </Select>
            </FormControl>
            <FormDescription />
            <FormMessage />
          </FormItem>
        )}
      />
    );
  };

  return (
    <Form {...form}>
      <form onSubmit={form.handleSubmit(onSubmit)} className="space-y-8">
        <div className="flex-col grid grid-cols-1 md:grid-cols-3 gap-4">
          <ParametrizedFormField
            field_name="state"
            label="State of residence"
            data={STATES}
          />
          <ParametrizedFormField
            field_name="language"
            label="Preferred language"
            data={LANGUAGES}
          />
          <ParametrizedFormField
            field_name="gender_preference"
            label="Gender preference (Optional)"
            data={GENDER_PREFERENCES}
          />
          <ParametrizedFormField
            field_name="insurance_provider"
            label="Insurance provider"
            data={INSURANCE_PROVIDERS}
          />
          <ParametrizedFormField
            field_name="appointment_type"
            label="Appointment type"
            data={APPOINTMENT_TYPES}
          />
          <ParametrizedFormField
            field_name="urgency_level"
            label="Urgency level"
            data={URGENCY_LEVELS}
          />
        </div>
        <Button type="submit">Submit</Button>
      </form>
    </Form>
  );
}
