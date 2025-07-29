import {
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
import {
  SelectContent,
  SelectItem,
  SelectTrigger,
  SelectValue,
} from "@/components/ui/select";
import { UseFormReturn } from "react-hook-form";
import z from "zod";
import { FormSchema } from "@/lib/schema";

const items = [
  {
    field_name: "state",
    label: "State of residence",
    placeholder: "Select a state",
    data: STATES,
  },
  {
    field_name: "language",
    label: "Preferred language",
    placeholder: null,
    data: LANGUAGES,
  },
  {
    field_name: "gender_preference",
    label: "Gender preference (Optional)",
    placeholder: null,
    data: GENDER_PREFERENCES,
  },
  {
    field_name: "insurance_provider",
    label: "Insurance provider",
    placeholder: "Select your insurance provider",
    data: INSURANCE_PROVIDERS,
  },
  {
    field_name: "appointment_type",
    label: "Appointment type",
    placeholder: null,
    data: APPOINTMENT_TYPES,
  },
  {
    field_name: "urgency_level",
    label: "Urgency level",
    placeholder: null,
    data: URGENCY_LEVELS,
  },
] as const;

export function IntakeFormSelectors({
  form,
  setIsMedicationManagement,
}: {
  form: UseFormReturn<z.infer<typeof FormSchema>>;
  setIsMedicationManagement?: (value: boolean) => void;
}) {
  return (
    <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
      {items.map((item) => (
        <FormField
          key={item.field_name}
          control={form.control}
          name={item.field_name}
          render={({ field }) => (
            <FormItem>
              <FormLabel>{item.label}</FormLabel>
              <FormControl>
                <Select
                  onValueChange={(value) => {
                    field.onChange(value);
                    if (item.field_name === "appointment_type") {
                      const isMedicationManagement =
                        value === "Medication Management";
                      setIsMedicationManagement?.(isMedicationManagement);
                    }
                  }}
                  defaultValue={field.value}
                >
                  <SelectTrigger className="w-full md:w-[190px]">
                    <SelectValue placeholder={item.placeholder} />
                  </SelectTrigger>
                  <SelectContent>
                    {item.data.map((data_item) => {
                      if (typeof data_item === "string") {
                        return (
                          <SelectItem value={data_item} key={data_item}>
                            {data_item}
                          </SelectItem>
                        );
                      }

                      return (
                        <SelectItem value={data_item.id} key={data_item.id}>
                          {data_item.label}
                        </SelectItem>
                      );
                    })}
                  </SelectContent>
                </Select>
              </FormControl>
              <FormDescription />
              <FormMessage />
            </FormItem>
          )}
        />
      ))}
    </div>
  );
}
