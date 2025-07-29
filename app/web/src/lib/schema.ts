import z from "zod";

export const FormSchema = z.object({
  state: z.string().min(1, "State is required"),
  language: z.string().min(1, "Language is required"),
  gender_preference: z.string().optional(),
  insurance_provider: z.string().min(1, "Insurance provider is required"),
  appointment_type: z.string().min(1, "Appointment type is required"),
  clinical_needs: z
    .array(z.string())
    .refine((value) => value.some((item) => item), {
      message: "At least one clinical need is required",
    }),
  preferred_time_slots: z
    .array(z.string()).optional(),
  urgency_level: z.string().min(1, "Urgency level is required"),
});