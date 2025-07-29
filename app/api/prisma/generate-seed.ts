// Generates a seed.sql with all possible combinations of state, insurance, language, clinical need, appointment type, gender, and time slot
import { writeFileSync } from 'fs';

const states = ['CA', 'TX', 'FL', 'NY', 'IL', 'PA', 'GA', 'NC', 'MI'];
const insurances = [
  'Aetna',
  'Blue Cross Blue Shield',
  'Cigna',
  'UnitedHealthcare',
  'Kaiser Permanente',
  'Humana',
  'Anthem',
  'Medicare',
];
const languages = ['English', 'Spanish', 'French'];
const clinicalNeeds = [
  'anxiety',
  'depression',
  'ptsd',
  'ocd',
  'bipolar',
  'schizophrenia',
  'personality_disorders',
  'trauma',
  'lgbtq',
  'family',
  'grief',
  'stress',
];
const appointmentTypes = ['therapy', 'medication'];
const genders = ['female', 'male', 'non_binary'];
const timeSlots = ['morning', 'afternoon', 'evening', 'night'];

let sql = '-- Auto-generated seed.sql with all possible combinations\n';
let id = 2000;
let stateId = 2000;
let langId = 2000;
let insId = 2000;
let appId = 2000;
let needId = 2000;
let slotId = 2000;

for (const state of states) {
  for (const insurance of insurances) {
    for (const language of languages) {
      for (const clinicalNeed of clinicalNeeds) {
        for (const appointmentType of appointmentTypes) {
          for (const gender of genders) {
            for (const timeSlot of timeSlots) {
              const clinicianId = `doctisplease${id}`;
              sql += `INSERT INTO "Clinician" (id, fullName, gender, isAvailableNow, matchCount, createdAt) VALUES ('${clinicianId}', 'Dr. Combo ${id}', '${gender}', 1, 0, CURRENT_TIMESTAMP);\n`;
              sql += `INSERT INTO "ClinicianState" (id, clinicianId, state) VALUES ('combcs${stateId}', '${clinicianId}', '${state}');\n`;
              sql += `INSERT INTO "ClinicianLanguage" (id, clinicianId, language) VALUES ('combcl${langId}', '${clinicianId}', '${language}');\n`;
              sql += `INSERT INTO "ClinicianInsurance" (id, clinicianId, insurance) VALUES ('combci${insId}', '${clinicianId}', '${insurance}');\n`;
              sql += `INSERT INTO "ClinicianAppointmentType" (id, clinicianId, type) VALUES ('combcat${appId}', '${clinicianId}', '${appointmentType}');\n`;
              sql += `INSERT INTO "ClinicianClinicalNeed" (id, clinicianId, need) VALUES ('combccn${needId}', '${clinicianId}', '${clinicalNeed}');\n`;
              sql += `INSERT INTO "ClinicianTimeSlot" (id, clinicianId, slot) VALUES ('combcts${slotId}', '${clinicianId}', '${timeSlot}');\n`;
              id++;
              stateId++;
              langId++;
              insId++;
              appId++;
              needId++;
              slotId++;
            }
          }
        }
      }
    }
  }
}

writeFileSync('seed.combinations2.sql', sql);
console.log('seed.combinations2.sql generated!');
