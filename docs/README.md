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
- [How to Run](#how-to-run)
- [Customization](#customization)
- [License](#license)

---

## Overview

We were tasked to create a fullstack service for matching patients with clinicians based on their preferences and needs. It features a modern React/Next.js frontend and NestJS backend for matching logic.

The frontend is located in the `app/web` folder and is built with Next.js.

The backend is located in the `/app/api` folder and is built with [NestJS](https://nestjs.com/). It provides RESTful endpoints for clinician data, patient intake, and matching logic. The backend uses Turso as the database provider and Prisma as the ORM. CI is handled with GitHub Actions, and CD is managed with Vercel and Railway.

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

## How to Run the Frontend

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

---

## Backend Components

> API URL: https://lunajoy-production.up.railway.app/

The backend is built with Nest.js using Prisma as it's ORM and Turso as the database provider.
And deployed using Railway.

- **src/app.module.ts**
- The root module that imports all other modules (database, matching engine, config, etc.).

- **src/app.controller.ts**  
  Basic controller for root endpoints (e.g., health check).

- **src/database/database.module.ts & database.service.ts**  
  Provides a service for database access, wrapping Prisma and exposing methods for CRUD operations on clinicians, patients, matches, etc.

- **src/prisma/prisma.module.ts & prisma.service.ts**  
  Sets up the Prisma client. Connects to Turso (production) or SQLite (development) based on environment variables. Ensures a singleton Prisma client for the app.

- **src/matching-engine/matching-engine.module.ts & matching-engine.service.ts**  
  Contains the core logic for matching patients with clinicians based on intake data and clinician availability/attributes.

- **src/config/config.module.ts & config.service.ts**  
  Loads and provides environment variables (e.g., database URLs, tokens).

- **prisma/schema.prisma**  
  Defines the database schema for clinicians, patients, clinical needs, time slots, etc.

- **prisma/seed.sql / seed.ts**  
  Scripts to seed the database with sample data for development/testing.

---

### Database & ORM

- **Database:**  
  [Turso](https://turso.tech/) (distributed, serverless SQLite) is used in production. Local SQLite is used for development.
- **ORM:**  
  [Prisma](https://www.prisma.io/) is used for type-safe database access and migrations.

---

### CI/CD

- **CI:**  
  [GitHub Actions](https://github.com/features/actions) runs linting, type-checking, tests, and build checks on every push and pull request.
- **CD:**
  - **Vercel:** Deploys the frontend and serverless API endpoints.
  - **Railway:** Hosts backend services and the Turso database. Environment variables and secrets are managed via the Railway dashboard.

---

### How to Run the Backend

1. **Install dependencies:**
   ```sh
   npm install
   ```
2. **Seed the database (optional):**
   ```sh
   npx prisma db seed
   ```
3. **Start the backend server:**
   ```sh
   npm run start:dev
   ```
4. **API endpoints** will be available at `http://localhost:4000/` (or as configured).
