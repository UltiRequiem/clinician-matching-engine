import { UseFormReturn } from "react-hook-form";
import { z } from "zod";

import { Checkbox } from "@/components/ui/checkbox";
import {
  FormControl,
  FormField,
  FormItem,
  FormLabel,
  FormMessage,
} from "@/components/ui/form";
import { FormSchema } from "@/lib/schema";

export function IntakeFormCheckboxes({
  field_name,
  form,
  dataMap,
}: {
  field_name: "clinical_needs" | "preferred_time_slots";
  form: UseFormReturn<z.infer<typeof FormSchema>>;
  dataMap: readonly { readonly id: string; readonly label: string }[];
}) {
  return (
    <FormField
      control={form.control}
      name={field_name}
      render={() => (
        <FormItem className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
          {dataMap.map((item) => (
            <FormField
              key={item.id}
              control={form.control}
              name={field_name}
              render={({ field }) => {
                return (
                  <FormItem
                    key={item.id}
                    className="flex flex-row items-center gap-2"
                  >
                    <FormControl>
                      <Checkbox
                        className="data-[state=checked]:bg-[#ffb21b] data-[state=checked]:border-[#ffb21b]"
                        checked={field.value?.includes(item.id)}
                        onCheckedChange={(checked) => {
                          return checked
                            ? field.onChange([...(field.value ?? []), item.id])
                            : field.onChange(
                                field.value?.filter(
                                  (value) => value !== item.id
                                )
                              );
                        }}
                      />
                    </FormControl>
                    <FormLabel className="text-sm font-normal">
                      {item.label}
                    </FormLabel>
                  </FormItem>
                );
              }}
            />
          ))}
          <FormMessage />
        </FormItem>
      )}
    />
  );
}
