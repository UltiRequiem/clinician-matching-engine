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
import type { ClinicianMatchScore, MatchIntakeDto } from "@lunajoy/engine";

export default function ResultsPage() {
	const router = useRouter();
	const [results, setResults] = useState<ClinicianMatchScore[]>([]);
	const [intake, setIntake] = useState<MatchIntakeDto | null>(null);
	const [loading, setLoading] = useState(true);

	useEffect(() => {
		const storedResults = sessionStorage.getItem("matchResults");
		const storedIntake = sessionStorage.getItem("matchIntake");

		if (storedResults && storedIntake) {
			setResults(JSON.parse(storedResults));
			setIntake(JSON.parse(storedIntake));
		} else {
			// Redirect back to home if no results
			router.push("/");
		}
		setLoading(false);
	}, [router]);

	if (loading) {
		return (
			<div className="bg-[#fffced] min-h-screen flex items-center justify-center">
				<div className="text-center">
					<h1 className="text-2xl font-bold mb-4 text-[#43635f]">
						Loading your matches...
					</h1>
				</div>
			</div>
		);
	}

	if (!results.length) {
		return (
			<div className="bg-[#fffced] min-h-screen flex items-center justify-center">
				<Card className="mx-auto max-w-2xl shadow-lg rounded-lg p-8">
					<CardHeader>
						<CardTitle className="text-3xl text-[#43635f] text-center mb-2">
							No matches found
						</CardTitle>
						<CardDescription className="text-center text-[#43635f] mb-6">
							We couldn&apos;t find any clinicians that match your criteria.
							Please try adjusting your preferences.
						</CardDescription>
					</CardHeader>
					<CardContent className="flex flex-col items-center">
						<Button
							onClick={() => router.push("/")}
							className="w-full max-w-xs mt-2"
						>
							Start New Search
						</Button>
					</CardContent>
				</Card>
			</div>
		);
	}

	return (
		<div className="bg-[#fffced] min-h-screen flex flex-col items-center justify-center py-10">
			<Card className="mx-auto max-w-3xl w-full shadow-lg rounded-lg">
				<CardHeader>
					<CardTitle className="text-3xl text-[#43635f] text-center mb-2">
						Your Matches
					</CardTitle>
					<CardDescription className="text-center text-[#43635f] mb-4">
						Here are the clinicians that best match your preferences. You can
						start a new search at any time.
					</CardDescription>
				</CardHeader>
				<CardContent>
					<div className="grid gap-6 md:grid-cols-2">
						{results.map((clinician, index) => (
							<div
								key={clinician.id}
								className="bg-white rounded-lg shadow p-4 flex flex-col justify-between border border-[#f3e9d2] relative"
							>
								{index === 0 && (
									<div className="absolute -top-2 -right-2 bg-green-500 text-white px-2 py-1 rounded-full text-xs font-semibold shadow">
										Best Match
									</div>
								)}
								<div>
									<h2 className="text-xl font-semibold text-[#43635f] mb-1">
										{clinician.fullName}
									</h2>
									<div className="text-sm text-gray-500 mb-2">
										Score: {Math.round(clinician.score * 100)}%
									</div>
									<div className="mb-2">
										{clinician.isAvailableNow ? (
											<span className="text-green-600 font-semibold">
												Available Now
											</span>
										) : (
											<span className="text-gray-500">
												Not currently available
											</span>
										)}
									</div>
									<div className="mb-2">
										<span className="font-semibold">Match Count:</span>{" "}
										{clinician.matchCount}
									</div>
									{clinician.overlapping.length > 0 && (
										<div className="mb-2">
											<span className="font-semibold">Matching Criteria:</span>
											<div className="flex flex-wrap gap-1 mt-1">
												{clinician.overlapping.map((criteria) => (
													<span
														key={criteria}
														className="bg-blue-100 text-blue-800 text-xs px-2 py-1 rounded"
													>
														{criteria}
													</span>
												))}
											</div>
										</div>
									)}
								</div>
							</div>
						))}
					</div>
					<div className="mt-8 flex flex-col items-center">
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
