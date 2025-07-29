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
  type ClinicianMatchScore,
  type MatchIntakeDto,
} from "@lunajoy/engine";

export default function ResultsPage() {
  const router = useRouter();
  const [results, setResults] = useState<ClinicianMatchScore[]>([]);
  const [_intake, setIntake] = useState<MatchIntakeDto | null>(null);
  const [loading, setLoading] = useState(true);
  const [current, setCurrent] = useState(0);
  const [direction, setDirection] = useState<"left" | "right" | null>(null);
  const [noMore, setNoMore] = useState(false);

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

  const handleSwipe = useCallback(
    (dir: "left" | "right") => {
      setDirection(dir);
      setTimeout(() => {
        if (dir === "right") {
          // Save selected doctor and redirect
          sessionStorage.setItem(
            "chosenDoctor",
            JSON.stringify(results[current])
          );
          router.push("/chosen");
        } else {
          // Next doctor
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
      <div className="bg-[#fffced] min-h-screen flex items-center justify-center">
        <Card className="mx-auto max-w-2xl shadow-lg rounded-lg p-8">
          <CardHeader>
            <CardTitle className="text-3xl text-[#43635f] text-center mb-2">
              No more options
            </CardTitle>
            <CardDescription className="text-center text-[#43635f] mb-6">
              Start your search again to see more clinicians.
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

  const clinician = results[current];

  return (
    <div className="bg-[#fffced] min-h-screen flex flex-col items-center justify-center py-10">
      <Card className="mx-auto max-w-lg w-full shadow-lg rounded-lg">
        <CardHeader>
          <CardTitle className="text-3xl text-[#43635f] text-center mb-2 font-serif">
            Your Matches
          </CardTitle>
          <CardDescription className="text-center text-[#43635f]">
            Swipe right to select your preferred clinician, or left to skip.
          </CardDescription>
        </CardHeader>
        <CardContent>
          <div className="flex flex-col items-center min-h-[300px] relative">
            <AnimatePresence initial={false} custom={direction}>
              <motion.div
                key={clinician.id}
                className="bg-white rounded-lg shadow p-6 flex flex-col justify-between border border-[#f3e9d2] w-full max-w-md absolute"
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
                <h2 className="text-xl font-semibold text-[#43635f] mb-1 text-center">
                  {clinician.fullName}
                </h2>
                <div className="flex items-center gap-2 text-sm text-gray-500 mb-2 justify-center">
                  <span>Score: {Math.round(clinician.score)}%</span>
                  {clinician.isAvailableNow && (
                    <span className="ml-2 px-2 py-0.5 rounded-full bg-green-100 text-green-700 text-xs font-semibold border border-green-200 shadow-sm align-middle">
                      Available Now
                    </span>
                  )}
                </div>
                {clinician.overlapping.length > 0 && (
                  <div className="mb-2 text-center">
                    <span className="font-semibold">Matching Criteria:</span>
                    <div className="flex flex-wrap gap-1 mt-1 justify-center">
                      {overlapLabels(clinician.overlapping).map((criteria) => (
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
                <div className="flex justify-between mt-8">
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
