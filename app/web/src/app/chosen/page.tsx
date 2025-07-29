"use client";

import { useEffect, useState } from "react";
import { Button } from "@/components/ui/button";
import {
	Card,
	CardContent,
	CardDescription,
	CardHeader,
	CardTitle,
} from "@/components/ui/card";
import { useRouter } from "next/navigation";
import type { ClinicianMatchScore } from "@lunajoy/engine";

export default function ChosenPage() {
	const router = useRouter();
	const [doctor, setDoctor] = useState<ClinicianMatchScore | null>(null);

	useEffect(() => {
		const stored = sessionStorage.getItem("chosenDoctor");
		if (stored) {
			setDoctor(JSON.parse(stored));
		} else {
			router.push("/");
		}
	}, [router]);

	if (!doctor) {
		return null;
	}

	return (
		<div className="bg-[#fffced] min-h-screen flex items-center justify-center">
			<Card className="mx-auto max-w-lg w-full shadow-lg rounded-lg p-8">
				<CardHeader>
					<CardTitle className="text-3xl text-[#43635f] text-center mb-2">
						Your Doctor Has Been Chosen!
					</CardTitle>
					<CardDescription className="text-center text-[#43635f] mb-4">
						Congratulations! You&apos;ve selected:
					</CardDescription>
				</CardHeader>
				<CardContent>
					<div className="flex flex-col items-center">
						<div className="bg-white rounded-lg shadow p-6 border border-[#f3e9d2] w-full max-w-md text-center mb-6">
							<h2 className="text-2xl font-semibold text-[#43635f] mb-2">
								{doctor.fullName}
							</h2>
							<div className="text-sm text-gray-500 mb-2">
								Score: {Math.round(doctor.score)}%
							</div>
							{doctor.isAvailableNow && (
								<span className="px-2 py-0.5 rounded-full bg-green-100 text-green-700 text-xs font-semibold border border-green-200 shadow-sm align-middle mb-2 inline-block">
									Available Now
								</span>
							)}
						</div>
						<Button
							onClick={() => router.push("/")}
							className="w-full max-w-xs"
						>
							Start New Search
						</Button>
					</div>
				</CardContent>
			</Card>
		</div>
	);
}
