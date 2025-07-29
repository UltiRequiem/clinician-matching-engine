# LunaJoy Documentation

Welcome to the LunaJoy Technical Challenge project documentation. This folder contains detailed docs for all backend and frontend components.

---

## Table of Contents

- [Overview](#overview)
- [Frontend Components](#frontend-components)
  - [app/page.tsx](#apppagetsx)
  - [app/results/page.tsx](#appresultspagetsx)
  - [components/form/IntakeForm.tsx](#componentsformintakeformtsx)
  - [components/form/IntakeFormSelectors.tsx](#componentsformintakeformselectorstsx)
  - [components/form/IntakeFormCheckboxes.tsx](#componentsformintakeformcheckboxestsx)
  - [components/ui/card.tsx](#componentsuicardtsx)
  - [components/ui/button.tsx](#componentsuibuttontsx)
  - [components/ui/form.tsx](#componentsuiformtsx)
- [Backend Components](#backend-components)
  - [lib/constants.ts](#libconstantsts)
  - [lib/matchClinicians.ts](#libmatchcliniciansts)
  - [lib/types.ts](#libtypests)
- [How to Run](#how-to-run)
- [Customization](#customization)
- [License](#license)

---

## Overview

We were tasked to create a fullstack service for matching patients with clinicians based on their preferences and needs. It features a modern React/Next.js frontend and NestJS backend for matching logic.

---

## Frontend Components

### app/page.tsx

- **Purpose:** Main landing page with a header that resembles the original found in LunaJoy webpage and the patient intake form.
- **Key Features:**
  - Responsive header with the LunaJoy logo, navigation, and CTA.
  - Card-centered intake form.
  - Uses Tailwind CSS for layout and styling.

---

### app/results/page.tsx

- **Purpose:** Displays clinician matches as swipeable cards.
- **Key Features:**
  - Animated card transitions using Framer Motion.
  - "Start New Search" button.
  - Responsive and centered layout.

---

### components/form/IntakeForm.tsx

- **Purpose:** Main intake form logic and submission.
- **Key Features:**
  - Uses React Hook Form and Zod for validation.
  - Handles form state, submission, and navigation to results.
  - Calls backend matching logic and stores results in sessionStorage.

---

### components/form/IntakeFormSelectors.tsx

- **Purpose:** Renders select dropdowns for form fields.
- **Key Features:**
  - Responsive grid layout.
  - Dynamically renders options from constants.
  - Customizable width for select fields.

---

### components/form/IntakeFormCheckboxes.tsx

- **Purpose:** Renders checkbox groups for multi-select fields.
- **Key Features:**
  - Responsive grid layout.
  - Custom checked color using Tailwind data attributes.
  - Handles array field updates in React Hook Form.

---

### components/ui/card.tsx

- **Purpose:** Card UI wrapper for consistent styling.
- **Key Features:**
  - Accepts custom class names for width, padding, etc.
  - Used for both form and results cards.

---

### components/ui/button.tsx

- **Purpose:** Reusable button component.
- **Key Features:**
  - Accepts custom class names for color, width, etc.
  - Used for form submission and navigation.

---

### components/ui/form.tsx

- **Purpose:** Form helpers for React Hook Form integration.
- **Key Features:**
  - Provides `FormField`, `FormItem`, `FormLabel`, `FormControl`, `FormMessage`, etc.
  - Ensures consistent form field structure and error handling.

---

### lib/constants.ts

- **Purpose:** Provides static data for form options.
- **Key Features:**
  - Lists of states, languages, gender preferences, insurance providers, appointment types, urgency levels, and clinical needs.

---

## Backend Components

## How to Run

1. **Install dependencies:**
   ```sh
   npm install
   ```
2. **Run the development server:**
   ```sh
   npm run dev
   ```
3. **Open in your browser:**  
   Visit [http://localhost:3000](http://localhost:3000)
