# LunaJoy Prisma Schema & Database Guide

## Overview

This schema models a mental health platform for matching patients with clinicians based on a rich set of attributes, preferences, and availability. It is designed for flexibility, scalability, and to support advanced matching and scheduling logic.

---

## Main Entities

### Patient

- **id**: Unique identifier (cuid)
- **state**: State of residence (string)
- **language**: Preferred language (string)
- **genderPreference**: Desired clinician gender (enum: Gender, optional)
- **insuranceProvider**: Patient's insurance (string)
- **appointmentType**: Desired appointment type (enum: AppointmentType)
- **urgencyLevel**: How soon care is needed (enum: UrgencyLevel)
- **createdAt**: Timestamp
- **Relations**:
  - `clinicalNeeds`: List of clinical needs (e.g., anxiety, trauma)
  - `preferredTimeSlots`: Preferred times for appointments
  - `matchLogs`: History of matches

### Clinician

- **id**: Unique identifier (cuid)
- **fullName**: Name
- **gender**: Gender (enum: Gender)
- **isAvailableNow**: Real-time availability (boolean)
- **matchCount**: Number of matches (for load balancing)
- **createdAt**: Timestamp
- **Relations**:
  - `statesLicensed`: States where licensed
  - `languagesSpoken`: Languages spoken
  - `insurancesAccepted`: Accepted insurances
  - `appointmentTypes`: Types of appointments offered
  - `clinicalSpecialties`: Clinical focus areas
  - `availableTimeSlots`: Available times
  - `matchLogs`: History of matches

### MatchLog

- **id**: Unique identifier
- **matchScore**: Numeric score for the match
- **overlapping**: JSON array of overlapping attributes
- **createdAt**: Timestamp
- **patientId**: Foreign key to Patient
- **clinicianId**: Foreign key to Clinician

---

## Join Tables (Many-to-Many)

- **PatientClinicalNeed**: Links patients to clinical needs
- **ClinicianClinicalNeed**: Links clinicians to specialties
- **PatientTimeSlot**: Patient's preferred times
- **ClinicianTimeSlot**: Clinician's available times
- **ClinicianState**: States where clinician is licensed
- **ClinicianLanguage**: Languages spoken by clinician
- **ClinicianInsurance**: Insurances accepted by clinician
- **ClinicianAppointmentType**: Appointment types offered

---

## Enums

- **Gender**: `male`, `female`, `non_binary`, `other`
- **AppointmentType**: `therapy`, `medication`
- **ClinicalNeed**: `anxiety`, `depression`, `trauma`, `perinatal`, `lgbtq`, `couples`, `grief`, `stress`
- **TimeSlot**: `morning`, `afternoon`, `evening`, `night`
- **UrgencyLevel**: `immediate`, `flexible`

---

## Usage

### 1. Migrate the Database

Run migrations to create the schema in your SQLite database:

```sh
npx prisma migrate dev --name init
```

### 2. Seed the Database

A SQL seed file (`seed.sql`) is provided with rich sample data for clinicians and patients. To load it:

```sh
sqlite3 ./dev.db < seed.sql
```

Or use Prisma's TypeScript seeding if you prefer.

### 3. Generate the Prisma Client

After any schema change, regenerate the client:

```sh
npx prisma generate
```

### 4. Querying

Use the generated Prisma Client in your Node.js/NestJS services. Example:

```ts
const clinicians = await prisma.clinician.findMany({
  where: {
    statesLicensed: { some: { state: 'CA' } },
    languagesSpoken: { some: { language: 'English' } },
    appointmentTypes: { some: { type: 'therapy' } },
  },
  include: {
    insurancesAccepted: true,
    clinicalSpecialties: true,
    availableTimeSlots: true,
  },
});
```

### 5. Matching Logic

The schema is designed to support advanced matching, including:

- Filtering by state, language, gender, specialty, insurance, and time slot
- Scoring and ranking clinicians
- Logging matches for auditing and analytics
