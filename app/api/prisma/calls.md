# LunaJoy API Example Calls

This document provides example `curl` commands for interacting with the LunaJoy matching engine API.

---

## 1. Match Clinicians (POST /matching-engine/match)

Request a ranked list of clinicians for a patient intake:

```sh
curl -X POST http://localhost:3000/matching-engine/match \
  -H "Content-Type: application/json" \
  -d '{
    "state": "CA",
    "language": "English",
    "genderPreference": "female",
    "insuranceProvider": "Aetna",
    "appointmentType": "therapy",
    "clinicalNeeds": ["anxiety", "trauma"],
    "preferredTimeSlots": ["morning", "evening"],
    "urgencyLevel": "immediate"
  }'
```

---

## 2. Get All Clinicians (GET /matching-engine/clinicians)

Fetch all clinicians and their details:

```sh
curl http://localhost:3000/matching-engine/clinicians
```

---

## 3. Example Response for /matching-engine/match

```json
[
  {
    "id": "c1",
    "fullName": "Dr. Alice Smith",
    "score": 75,
    "isAvailableNow": true,
    "overlapping": [
      "available_now",
      "accepts_insurance",
      "specialty_match",
      "language",
      "state",
      "gender",
      "appointment_type",
      "time_slot"
    ],
    "matchCount": 2
  }
  // ... more clinicians
]
```

---

## 4. Notes

- The API expects JSON bodies for POST requests.
- Adjust the port and host as needed for your environment.
- For more endpoints, see the main README or your NestJS routes.
