export const STATES = [
  {
    id: "CA",
    label: "California",
  },
  {
    id: "TX",
    label: "Texas",
  },
  {
    id: "FL",
    label: "Florida",
  },
  {
    id: "NY",
    label: "New York",
  },
  {
    id: "IL",
    label: "Illinois",
  },
  {
    id: "PA",
    label: "Pennsylvania",
  },
  {
    id: "GA",
    label: "Georgia",
  },
  {
    id: "NC",
    label: "North Carolina",
  },
  {
    id: "MI",
    label: "Michigan",
  },
];

export const LANGUAGES = [
  "English",
  "Spanish",
  "Mandarin",
  "French",
  "German",
  "Italian",
  "Portuguese",
];

export const GENDER_PREFERENCES = [
  { id: "no_preference", label: "No preference" },
  { id: "female", label: "Female" },
  { id: "male", label: "Male" },
  { id: "non_binary", label: "Non-binary" },
];

export const INSURANCE_PROVIDERS = [
  "Aetna",
  "Blue Cross Blue Shield",
  "Cigna",
  "UnitedHealthcare",
  "Kaiser Permanente",
  "Humana",
  "Anthem",
  "Medicare",
];

export const APPOINTMENT_TYPES = [
  { id: "therapy", label: "Therapy" },
  { id: "medication", label: "Medication Management" },
];

export const URGENCY_LEVELS = ["Inmediate (within 3 days)", "Flexible"];

export const CLINICAL_NEEDS = [
  {
    id: "anxiety",
    label: "Anxiety",
  },
  {
    id: "depression",
    label: "Depression",
  },
  {
    id: "ptsd",
    label: "PTSD",
  },
  {
    id: "ocd",
    label: "OCD",
  },
  {
    id: "bipolar",
    label: "Bipolar Disorder",
  },
  {
    id: "schizophrenia",
    label: "Schizophrenia",
  },
  {
    id: "personality_disorders",
    label: "Personality Disorders",
  },
  {
    id: "trauma",
    label: "Trauma",
  },
  {
    id: "lgbtq",
    label: "LGBTQ+ Issues",
  },
  {
    id: "family",
    label: "Family Issues",
  },
  {
    id: "grief",
    label: "Grief and Loss",
  },
  {
    id: "stress",
    label: "Stress Management",
  },
] as const;

export const TIME_SLOTS = [
  {
    id: "morning",
    label: "Morning (9am - 12pm)",
  },
  {
    id: "afternoon",
    label: "Afternoon (12pm - 3pm)",
  },
  {
    id: "evening",
    label: "Evening (3pm - 6pm)",
  },
  {
    id: "night",
    label: "Night (6pm - 9pm)",
  },
] as const;
