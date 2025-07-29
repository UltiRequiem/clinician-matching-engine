"use client";

import { useEffect, useState, useCallback } from "react";
import { Button } from "@/components/ui/button";
import {
  Card,
  CardContent,
  CardDescription,
  CardHeader,
  CardTitle,
} from "@/components/ui/card";
import { useRouter } from "next/navigation";
import { motion, AnimatePresence } from "framer-motion";
import {
  overlapLabels,
  explainMatch,
  type ClinicianMatchScore,
  type MatchIntakeDto,
} from "@lunajoy/engine";
import { getRandomColor } from "./color";

export default function ResultsPage() {
  const router = useRouter();
  const [results, setResults] = useState<ClinicianMatchScore[]>([]);
  const [intake, setIntake] = useState<MatchIntakeDto | null>(null);
  const [loading, setLoading] = useState(true);
  const [current, setCurrent] = useState(0);
  const [direction, setDirection] = useState<"left" | "right" | null>(null);
  const [noMore, setNoMore] = useState(false);

  const [displayedExplanation, setDisplayedExplanation] = useState("");

  useEffect(() => {
    const storedResults = sessionStorage.getItem("matchResults");
    const storedIntake = sessionStorage.getItem("matchIntake");
    if (storedResults && storedIntake) {
      setResults(JSON.parse(storedResults));
      setIntake(JSON.parse(storedIntake));
    } else {
      router.push("/");
    }
    setLoading(false);
  }, [router]);

  const fetchExplanation = useCallback(async () => {
    if (!intake) {
      console.log("No intake data available");
      return;
    }

    setDisplayedExplanation("");

    try {
      const reader = await explainMatch(intake);
      const decoder = new TextDecoder();
      let accumulatedText = "";

      while (true) {
        const { done, value } = await reader.read();
        if (done) break;

        const chunk = decoder.decode(value, { stream: true });
        accumulatedText += chunk;

        setDisplayedExplanation(accumulatedText);
      }
    } catch (error) {
      console.error("Failed to fetch explanation:", error);
      setDisplayedExplanation("Unable to load explanation at this time.");
    }
  }, [intake]);

  useEffect(() => {
    if (intake && results.length > 0 && current === 0) {
      console.log("Fetching explanation for:", intake);
      fetchExplanation();
    }
  }, [intake, results, current, fetchExplanation]);

  const handleSwipe = useCallback(
    (dir: "left" | "right") => {
      setDirection(dir);
      setTimeout(() => {
        if (dir === "right") {
          sessionStorage.setItem(
            "chosenDoctor",
            JSON.stringify(results[current])
          );

          router.push("/chosen");
        } else {
          if (current + 1 < results.length) {
            setCurrent((c) => c + 1);
            setDirection(null);
          } else {
            setNoMore(true);
          }
        }
      }, 300);
    },
    [current, results, router]
  );

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

  if (noMore || !results.length) {
    return (
      <div className="bg-[#fffced] min-h-screen flex items-center justify-center p-4 pb-20">
        <Card className="mx-auto max-w-2xl shadow-lg rounded-lg p-8">
          <CardHeader>
            <CardTitle className="text-3xl text-[#43635f] text-center mb-2">
              {!results.length ? "No Doctors Available" : "No More Options"}
            </CardTitle>
            <CardDescription className="text-center text-[#43635f] mb-6">
              {!results.length
                ? "We couldn't find any doctors matching your current criteria. Don't worry - this is common and we can help you find alternatives."
                : "You've seen all available matches. Let's try a new search with different criteria."}
            </CardDescription>
          </CardHeader>
          <CardContent className="flex flex-col items-center space-y-6">
            {!results.length && (
              <div className="w-full max-w-md">
                <h3 className="text-lg font-semibold text-[#43635f] mb-3 text-center">
                  Try these suggestions:
                </h3>
                <div className="space-y-3">
                  <div className="flex items-start space-x-3 p-3 bg-blue-50 rounded-lg border border-blue-200">
                    <div className="flex-shrink-0 w-6 h-6 bg-blue-500 rounded-full flex items-center justify-center text-white text-sm font-bold">
                      1
                    </div>
                    <div>
                      <p className="text-sm font-medium text-[#43635f]">
                        Expand your location
                      </p>
                      <p className="text-xs text-gray-600">
                        Try nearby states or cities
                      </p>
                    </div>
                  </div>
                  <div className="flex items-start space-x-3 p-3 bg-green-50 rounded-lg border border-green-200">
                    <div className="flex-shrink-0 w-6 h-6 bg-green-500 rounded-full flex items-center justify-center text-white text-sm font-bold">
                      2
                    </div>
                    <div>
                      <p className="text-sm font-medium text-[#43635f]">
                        Adjust appointment type
                      </p>
                      <p className="text-xs text-gray-600">
                        Try virtual or in-person options
                      </p>
                    </div>
                  </div>
                  <div className="flex items-start space-x-3 p-3 bg-purple-50 rounded-lg border border-purple-200">
                    <div className="flex-shrink-0 w-6 h-6 bg-purple-500 rounded-full flex items-center justify-center text-white text-sm font-bold">
                      3
                    </div>
                    <div>
                      <p className="text-sm font-medium text-[#43635f]">
                        Check different insurance
                      </p>
                      <p className="text-xs text-gray-600">
                        Verify your insurance provider
                      </p>
                    </div>
                  </div>
                  <div className="flex items-start space-x-3 p-3 bg-orange-50 rounded-lg border border-orange-200">
                    <div className="flex-shrink-0 w-6 h-6 bg-orange-500 rounded-full flex items-center justify-center text-white text-sm font-bold">
                      4
                    </div>
                    <div>
                      <p className="text-sm font-medium text-[#43635f]">
                        Be flexible with preferences
                      </p>
                      <p className="text-xs text-gray-600">
                        Consider different time slots or languages
                      </p>
                    </div>
                  </div>
                </div>
              </div>
            )}

            <div className="flex flex-col sm:flex-row gap-3 w-full max-w-md">
              <Button
                onClick={() => router.push("/")}
                className="flex-1 bg-[#ffb21b] text-[#43635f] hover:bg-[#ffb21b]/90"
              >
                {!results.length ? "Try New Search" : "Start New Search"}
              </Button>
              {!results.length && (
                <Button
                  variant="outline"
                  onClick={() => {
                    sessionStorage.removeItem("matchResults");
                    sessionStorage.removeItem("matchIntake");
                    router.push("/");
                  }}
                  className="flex-1"
                >
                  Clear & Restart
                </Button>
              )}
            </div>

            {!results.length && (
              <p className="text-xs text-gray-500 text-center mt-4">
                Need immediate help? Contact our support team for personalized
                assistance.
              </p>
            )}
          </CardContent>
        </Card>
      </div>
    );
  }

  const clinician = results[current];
  const isTopMatch = current === 0;

  return (
    <div className="bg-[#fffced] min-h-screen flex flex-col items-center justify-center py-10 pb-20 px-4">
      <Card className="mx-auto max-w-lg w-full shadow-lg rounded-lg">
        <CardHeader>
          <CardTitle className="text-3xl text-[#43635f] text-center mb-2 font-serif">
            Your Matches
          </CardTitle>
          <CardDescription className="text-center text-[#43635f] text-bold">
            Swipe right to select your preferred clinician, or left to skip.
          </CardDescription>
        </CardHeader>
        <CardContent>
          <div className="flex flex-col items-center relative">
            <AnimatePresence initial={false} custom={direction}>
              <motion.div
                key={clinician.id}
                className="bg-white rounded-xl shadow-xl p-6 flex flex-col border border-[#f3e9d2] w-full max-w-md min-h-[600px] max-h-[700px] backdrop-blur-sm overflow-hidden"
                initial={{
                  x:
                    direction === "left"
                      ? 300
                      : direction === "right"
                        ? -300
                        : 0,
                  opacity: 0,
                }}
                animate={{ x: 0, opacity: 1 }}
                exit={{ x: direction === "left" ? -500 : 500, opacity: 0 }}
                transition={{ type: "spring", stiffness: 300, damping: 30 }}
                layout
                drag="x"
                dragConstraints={{ left: 0, right: 0 }}
                dragElastic={0.8}
                onDragEnd={(
                  _e: MouseEvent | TouchEvent | PointerEvent,
                  info: { offset: { x: number } }
                ) => {
                  if (info.offset.x > 120) handleSwipe("right");
                  else if (info.offset.x < -120) handleSwipe("left");
                }}
              >
                {isTopMatch && (
                  <div className="mb-3 text-center">
                    <span className="inline-flex items-center px-2 py-1 sm:px-3 sm:py-1 rounded-full text-xs font-medium bg-gradient-to-r from-yellow-400 to-orange-400 text-white shadow-sm">
                      ⭐ Top Match
                    </span>
                  </div>
                )}

                <div className="text-center mb-3">
                  <div className="flex justify-center mb-3">
                    <div
                      className="w-14 h-14 rounded-full flex items-center justify-center text-white font-bold text-lg shadow-lg"
                      style={{
                        backgroundColor: getRandomColor(clinician.fullName),
                      }}
                    >
                      {clinician.fullName
                        .split(" ")
                        .map((name) => name[0])
                        .join("")
                        .toUpperCase()}
                    </div>
                  </div>
                  <h2 className="text-xl font-bold text-[#43635f] mb-2">
                    {clinician.fullName}
                  </h2>
                </div>
                <div className="flex items-center gap-2 sm:gap-3 text-sm mb-3 justify-center">
                  <div className="flex items-center gap-1 bg-blue-50 px-2 py-1 sm:px-3 sm:py-1 rounded-full border border-blue-200">
                    <span className="text-blue-700 font-semibold text-xs sm:text-sm">
                      Score:
                    </span>
                    <span className="text-blue-800 font-bold text-xs sm:text-sm">
                      {Math.round(clinician.score)}%
                    </span>
                  </div>
                  {clinician.isAvailableNow && (
                    <span className="px-2 py-1 sm:px-3 sm:py-1 rounded-full bg-green-100 text-green-700 text-xs font-semibold border border-green-200 shadow-sm">
                      Available Now
                    </span>
                  )}
                </div>
                {clinician.overlapping.length > 0 && (
                  <div className="mb-3 text-center">
                    <span className="font-semibold text-[#43635f] mb-2 block">
                      Matching Criteria:
                    </span>
                    <div className="flex flex-wrap gap-1 sm:gap-2 justify-center">
                      {overlapLabels(clinician.overlapping)
                        .sort((a, b) => a.length - b.length)
                        .map((criteria) => (
                          <span
                            key={criteria}
                            className="bg-gradient-to-r from-blue-50 to-indigo-50 text-blue-800 text-xs px-1.5 py-0.5 sm:px-3 sm:py-1.5 rounded-full border border-blue-200 font-medium"
                          >
                            {criteria}
                          </span>
                        ))}
                    </div>
                  </div>
                )}

                {isTopMatch && (
                  <div className="mt-3 p-4 bg-gradient-to-br from-blue-50 to-indigo-50 rounded-xl border border-blue-200 shadow-sm flex-shrink-0">
                    <div className="mb-3">
                      <h3 className="text-sm font-bold text-[#43635f] flex items-center gap-2">
                        <span className="w-2 h-2 bg-blue-500 rounded-full"></span>
                        Why this is your best match:
                      </h3>
                    </div>

                    <div className="min-h-[120px]">
                      <div className="h-48 overflow-y-auto pr-2 border border-gray-200 rounded-lg p-3 bg-white">
                        {displayedExplanation ? (
                          <div className="space-y-2">
                            <p className="text-sm leading-relaxed text-[#43635f] whitespace-pre-wrap">
                              {displayedExplanation}
                            </p>
                          </div>
                        ) : (
                          <div className="space-y-2">
                            <p className="text-sm text-gray-500">
                              Loading explanation...
                            </p>
                          </div>
                        )}
                      </div>
                    </div>
                  </div>
                )}

                <div className="flex justify-between mt-auto pt-6">
                  <Button
                    variant="outline"
                    className="w-32 text-xl font-serif py-3"
                    onClick={() => handleSwipe("left")}
                  >
                    Skip
                  </Button>
                  <Button
                    className="w-32 bg-[#ffb21b] text-[#43635f] hover:bg-[#ffb21b]/90 text-xl font-serif py-3"
                    onClick={() => handleSwipe("right")}
                  >
                    Select
                  </Button>
                </div>
              </motion.div>
            </AnimatePresence>
          </div>
        </CardContent>
      </Card>
    </div>
  );
}
