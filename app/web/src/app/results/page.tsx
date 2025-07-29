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
			<div className="container mx-auto px-4 py-8">
				<div className="text-center">
					<h1 className="text-2xl font-bold mb-4">Loading your matches...</h1>
				</div>
			</div>
		);
	}

	if (!results.length) {
		return (
			<div className="container mx-auto px-4 py-8">
				<div className="text-center">
					<h1 className="text-2xl font-bold mb-4">No matches found</h1>
					<p className="text-gray-600 mb-6">
						We couldn&apos;t find any clinicians that match your criteria.
						Please try adjusting your preferences.
					</p>
					<Button onClick={() => router.push("/")}>Try Again</Button>
				</div>
			</div>
		);
	}

	return (
		<div className="container mx-auto px-4 py-8">
			<div className="mb-8">
				<h1 className="text-3xl font-bold mb-2">Your Matches</h1>
				<p className="text-gray-600">
					Based on your preferences, here are the clinicians that best match
					your needs:
				</p>
			</div>

			<div className="grid gap-6 md:grid-cols-2 lg:grid-cols-3">
				{results.map((clinician, index) => (
					<Card key={clinician.id} className="relative">
						{index === 0 && (
							<div className="absolute -top-2 -right-2 bg-green-500 text-white px-2 py-1 rounded-full text-xs font-semibold">
								Best Match
							</div>
						)}
						<CardHeader>
							<CardTitle className="flex items-center justify-between">
								<span>{clinician.fullName}</span>
								<span className="text-sm font-normal text-gray-500">
									Score: {Math.round(clinician.score * 100)}%
								</span>
							</CardTitle>
							<CardDescription>
								{clinician.isAvailableNow ? (
									<span className="text-green-600 font-semibold">
										Available Now
									</span>
								) : (
									<span className="text-gray-500">Not currently available</span>
								)}
							</CardDescription>
						</CardHeader>
						<CardContent>
							<div className="space-y-2">
								<div>
									<span className="font-semibold">Match Count:</span>{" "}
									{clinician.matchCount}
								</div>
								{clinician.overlapping.length > 0 && (
									<div>
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
						</CardContent>
					</Card>
				))}
			</div>

			<div className="mt-8 text-center">
				<Button
					onClick={() => router.push("/")}
					variant="outline"
					className="mr-4"
				>
					Start New Search
				</Button>
				<Button>Contact Selected Clinician</Button>
			</div>
		</div>
	);
}
