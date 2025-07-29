-- Add performance indexes for clinician matching
-- These indexes will dramatically improve query performance for 62,000+ clinicians

-- Index for availability and match count (primary ordering)
CREATE INDEX "idx_clinician_availability_matchcount" ON "Clinician" ("isAvailableNow" DESC, "matchCount" ASC);

-- Index for state filtering (most restrictive filter)
CREATE INDEX "idx_clinician_state" ON "ClinicianState" ("state");

-- Index for language filtering (second most restrictive)
CREATE INDEX "idx_clinician_language" ON "ClinicianLanguage" ("language");

-- Index for insurance filtering
CREATE INDEX "idx_clinician_insurance" ON "ClinicianInsurance" ("insurance");

-- Index for appointment type filtering
CREATE INDEX "idx_clinician_appointment_type" ON "ClinicianAppointmentType" ("type");

-- Index for clinical needs filtering
CREATE INDEX "idx_clinician_clinical_need" ON "ClinicianClinicalNeed" ("need");

-- Index for time slots filtering
CREATE INDEX "idx_clinician_time_slot" ON "ClinicianTimeSlot" ("slot");

-- Composite index for clinician ID lookups in related tables
CREATE INDEX "idx_clinician_state_clinician_id" ON "ClinicianState" ("clinicianId");
CREATE INDEX "idx_clinician_language_clinician_id" ON "ClinicianLanguage" ("clinicianId");
CREATE INDEX "idx_clinician_insurance_clinician_id" ON "ClinicianInsurance" ("clinicianId");
CREATE INDEX "idx_clinician_appointment_type_clinician_id" ON "ClinicianAppointmentType" ("clinicianId");
CREATE INDEX "idx_clinician_clinical_need_clinician_id" ON "ClinicianClinicalNeed" ("clinicianId");
CREATE INDEX "idx_clinician_time_slot_clinician_id" ON "ClinicianTimeSlot" ("clinicianId"); 