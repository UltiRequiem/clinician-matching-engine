import type {
  ClinicianMatchScore,
  ClinicianWithRelations,
  MatchIntakeDto,
  UrgencyLevel,
} from "./types";

const API_BASE = "https://lunajoy-production.up.railway.app";

export async function getHello(): Promise<string> {
  const res = await fetch(`${API_BASE}/`, { method: "GET" });
  if (!res.ok) throw new Error("Failed to fetch hello");
  return res.text();
}

export async function matchClinicians(
  intake: MatchIntakeDto
): Promise<ClinicianMatchScore[]> {
  const res = await fetch(`${API_BASE}/matching-engine/match`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(intake),
  });

  if (!res.ok) throw new Error("Failed to match clinicians");

  return res.json();
}

export async function explainMatch(
  intake: MatchIntakeDto
): Promise<ReadableStreamDefaultReader<Uint8Array>> {
  const res = await fetch(`${API_BASE}/matching-engine/match/explain`, {
    method: "POST",
    headers: { "Content-Type": "application/json" },
    body: JSON.stringify(intake),
  });

  const reader = res.body?.getReader();

  if (!reader) throw new Error("Failed to read response stream");

  return reader;
}

export async function getAllClinicians(): Promise<ClinicianWithRelations[]> {
  const res = await fetch(`${API_BASE}/matching-engine/clinicians`, {
    method: "GET",
  });

  if (!res.ok) throw new Error("Failed to fetch clinicians");

  return res.json();
}

export type {
  ClinicianMatchScore,
  ClinicianWithRelations,
  MatchIntakeDto,
  UrgencyLevel,
};
