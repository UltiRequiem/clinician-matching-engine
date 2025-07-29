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
	CLINICAL_NEEDS,
	GENDER_PREFERENCES,
	INSURANCE_PROVIDERS,
	LANGUAGES,
	STATES,
	TIME_SLOTS,
	URGENCY_LEVELS,
} from "@/lib/constants";
import { zodResolver } from "@hookform/resolvers/zod";
import {
	SelectContent,
	SelectItem,
	SelectTrigger,
	SelectValue,
} from "@/components/ui/select";
import { Checkbox } from "@/components/ui/checkbox";
import { useForm } from "react-hook-form";
import { useRouter } from "next/navigation";
import {
	matchClinicians,
	UrgencyLevel,
	type MatchIntakeDto,
} from "@lunajoy/engine";

import z from "zod";

const formSchema = z.object({
	state: z.string().min(1, "State is required"),
	language: z.string().min(1, "Language is required"),
	gender_preference: z.string().optional(),
	insurance_provider: z.string().min(1, "Insurance provider is required"),
	appointment_type: z.string().min(1, "Appointment type is required"),
	urgency_level: z.string().min(1, "Urgency level is required"),
	clinical_needs: z
		.array(z.string())
		.min(1, "At least one clinical need is required"),
	preferred_time_slots: z.array(z.string()).optional(),
});

export default function PatientForm() {
	const router = useRouter();
	const form = useForm({
		resolver: zodResolver(formSchema),
		defaultValues: {
			state: "",
			language: "English",
			gender_preference: "No preference",
			insurance_provider: "",
			appointment_type: "Therapy",
			urgency_level: "Flexible",
			clinical_needs: [],
			preferred_time_slots: [],
		},
	});

	async function onSubmit(data: z.infer<typeof formSchema>) {
		try {
			// Convert form data to MatchIntakeDto format
			const matchIntake: MatchIntakeDto = {
				state: data.state,
				language: data.language,
				genderPreference:
					data.gender_preference === "No preference"
						? undefined
						: data.gender_preference,
				insuranceProvider: data.insurance_provider,
				appointmentType: data.appointment_type.toLowerCase(),
				clinicalNeeds: data.clinical_needs,
				preferredTimeSlots: data.preferred_time_slots,
				urgencyLevel: (data.urgency_level === "Inmediate (within 3 days)"
					? "immediate"
					: "flexible") as UrgencyLevel,
			};

			console.log(matchIntake);
			console.log(JSON.stringify(matchIntake));

			// Call the matching engine
			const results = await matchClinicians(matchIntake);

			// Store results in sessionStorage for the results page
			sessionStorage.setItem("matchResults", JSON.stringify(results));
			sessionStorage.setItem("matchIntake", JSON.stringify(matchIntake));

			// Navigate to results page
			router.push("/results");
		} catch (error) {
			console.error("Error matching clinicians:", error);
			alert("Failed to match clinicians. Please try again.");
		}
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
									<SelectValue placeholder={`Select ${label.toLowerCase()}`} />
								</SelectTrigger>
								<SelectContent>
									{data.map((item) => (
										<SelectItem value={item} key={item}>
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

	// TODO: Refactor this to be a generic form field
	const StatesFormField = ({
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
		data: { id: string; label: string }[];
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
									<SelectValue placeholder={`Select ${label.toLowerCase()}`} />
								</SelectTrigger>
								<SelectContent>
									{data.map((item) => (
										<SelectItem value={item.id} key={item.id}>
											{item.label}
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
					<StatesFormField
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

				{/* Clinical Needs */}
				<FormField
					control={form.control}
					name="clinical_needs"
					render={() => (
						<FormItem>
							<div className="mb-4">
								<FormLabel className="text-base">Clinical Needs</FormLabel>
								<FormDescription>
									Select all that apply to your current situation
								</FormDescription>
							</div>
							<div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
								{CLINICAL_NEEDS.map((need) => (
									<FormField
										key={need.id}
										control={form.control}
										name="clinical_needs"
										render={({ field }) => {
											return (
												<FormItem
													key={need.id}
													className="flex flex-row items-start space-x-3 space-y-0"
												>
													<FormControl>
														<Checkbox
															checked={field.value?.includes(need.id)}
															onCheckedChange={(checked) => {
																return checked
																	? field.onChange([
																			...(field.value || []),
																			need.id,
																		])
																	: field.onChange(
																			(field.value || []).filter(
																				(value) => value !== need.id,
																			),
																		);
															}}
														/>
													</FormControl>
													<FormLabel className="font-normal">
														{need.label}
													</FormLabel>
												</FormItem>
											);
										}}
									/>
								))}
							</div>
							<FormMessage />
						</FormItem>
					)}
				/>

				{/* Preferred Time Slots */}
				<FormField
					control={form.control}
					name="preferred_time_slots"
					render={() => (
						<FormItem>
							<div className="mb-4">
								<FormLabel className="text-base">
									Preferred Time Slots (Optional)
								</FormLabel>
								<FormDescription>
									Select your preferred appointment times
								</FormDescription>
							</div>
							<div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4">
								{TIME_SLOTS.map((slot) => (
									<FormField
										key={slot.id}
										control={form.control}
										name="preferred_time_slots"
										render={({ field }) => {
											return (
												<FormItem
													key={slot.id}
													className="flex flex-row items-start space-x-3 space-y-0"
												>
													<FormControl>
														<Checkbox
															checked={field.value?.includes(slot.id)}
															onCheckedChange={(checked) => {
																return checked
																	? field.onChange([
																			...(field.value || []),
																			slot.id,
																		])
																	: field.onChange(
																			(field.value || []).filter(
																				(value) => value !== slot.id,
																			),
																		);
															}}
														/>
													</FormControl>
													<FormLabel className="font-normal">
														{slot.label}
													</FormLabel>
												</FormItem>
											);
										}}
									/>
								))}
							</div>
							<FormMessage />
						</FormItem>
					)}
				/>

				<Button type="submit" className="w-full">
					Find My Match
				</Button>
			</form>
		</Form>
	);
}
