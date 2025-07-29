export const STATES = [
    "California",
    "Texas",
    "Florida",
    "New York",
    "Illinois",
    "Pennsylvania",
    "Ohio",
    "Georgia",
    "North Carolina",
    "Michigan",
];

export const LANGUAGES = [
    "English",
    "Spanish",
    "Mandarin",
    "French",
    "German",
    "Italian",
    "Portuguese"
];

export const GENDER_PREFERENCES = [
    "No preference",
    "Female",
    "Male",
    "Non-binary",
];

export const INSURANCE_PROVIDERS = [
    "Aetna",
    "Blue Cross Blue Shield",
    "Cigna",
    "UnitedHealthcare",
    "Kaiser Permanente",
    "Humana",
    "Anthem",
    "Medicare"
];

export const APPOINTMENT_TYPES = [
    "Therapy",
    "Medication Management",
];

export const URGENCY_LEVELS = [
    "Inmediate (within 3 days)",
    "Flexible",
];

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
        id: "lgbtq_issues",
        label: "LGBTQ+ Issues",
    },
    {
        id: "family_issues",
        label: "Family Issues",
    },
    {
        id: "grief_loss",
        label: "Grief and Loss",
    },
    {
        id: "stress_management",
        label: "Stress Management",
    }
] as const;

export const TIME_SLOTS = [
    {
        id: "early_morning",
        label: "Early Morning (6am - 9am)",
    },
    {
        id: "morning",
        label: "Morning (9am - 12pm)",
    },
    {
        id: "afternoon",
        label: "Afternoon (12pm - 3pm)",
    },
    {
        id: "late_afternoon",
        label: "Late Afternoon (3pm - 6pm)",
    },
    {
        id: "evening",
        label: "Evening (6pm - 9pm)",
    }
] as const;