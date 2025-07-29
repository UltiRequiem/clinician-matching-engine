-- Seed for Clinicians and related tables

-- 20 Clinicians
INSERT INTO "Clinician" (id, fullName, gender, isAvailableNow, matchCount, createdAt) VALUES
('c1', 'Dr. Alice Smith', 'female', 1, 2, CURRENT_TIMESTAMP),
('c2', 'Dr. Bob Johnson', 'male', 0, 1, CURRENT_TIMESTAMP),
('c3', 'Dr. Carol Lee', 'female', 1, 0, CURRENT_TIMESTAMP),
('c4', 'Dr. David Kim', 'male', 0, 3, CURRENT_TIMESTAMP),
('c5', 'Dr. Eva Brown', 'female', 1, 1, CURRENT_TIMESTAMP),
('c6', 'Dr. Frank White', 'male', 0, 2, CURRENT_TIMESTAMP),
('c7', 'Dr. Grace Green', 'female', 1, 0, CURRENT_TIMESTAMP),
('c8', 'Dr. Henry Black', 'male', 1, 4, CURRENT_TIMESTAMP),
('c9', 'Dr. Irene Blue', 'female', 0, 2, CURRENT_TIMESTAMP),
('c10', 'Dr. Jack Red', 'male', 1, 1, CURRENT_TIMESTAMP),
('c11', 'Dr. Kelly Orange', 'female', 0, 0, CURRENT_TIMESTAMP),
('c12', 'Dr. Liam Purple', 'male', 1, 2, CURRENT_TIMESTAMP),
('c13', 'Dr. Mia Yellow', 'female', 1, 3, CURRENT_TIMESTAMP),
('c14', 'Dr. Noah Pink', 'male', 0, 1, CURRENT_TIMESTAMP),
('c15', 'Dr. Olivia Gray', 'female', 1, 0, CURRENT_TIMESTAMP),
('c16', 'Dr. Paul Silver', 'male', 1, 2, CURRENT_TIMESTAMP),
('c17', 'Dr. Quinn Gold', 'non_binary', 0, 1, CURRENT_TIMESTAMP),
('c18', 'Dr. Rose Bronze', 'female', 1, 0, CURRENT_TIMESTAMP),
('c19', 'Dr. Sam Copper', 'male', 0, 2, CURRENT_TIMESTAMP),
('c20', 'Dr. Tina Teal', 'female', 1, 1, CURRENT_TIMESTAMP);

-- States Licensed
INSERT INTO "ClinicianState" (id, clinicianId, state) VALUES
('cs1', 'c1', 'CA'), ('cs2', 'c2', 'NY'), ('cs3', 'c3', 'TX'), ('cs4', 'c4', 'FL'),
('cs5', 'c5', 'CA'), ('cs6', 'c6', 'NY'), ('cs7', 'c7', 'TX'), ('cs8', 'c8', 'FL'),
('cs9', 'c9', 'CA'), ('cs10', 'c10', 'NY'), ('cs11', 'c11', 'TX'), ('cs12', 'c12', 'FL'),
('cs13', 'c13', 'CA'), ('cs14', 'c14', 'NY'), ('cs15', 'c15', 'TX'), ('cs16', 'c16', 'FL'),
('cs17', 'c17', 'CA'), ('cs18', 'c18', 'NY'), ('cs19', 'c19', 'TX'), ('cs20', 'c20', 'FL');

-- Languages Spoken
INSERT INTO "ClinicianLanguage" (id, clinicianId, language) VALUES
('cl1', 'c1', 'English'), ('cl2', 'c2', 'Spanish'), ('cl3', 'c3', 'English'), ('cl4', 'c4', 'French'),
('cl5', 'c5', 'English'), ('cl6', 'c6', 'Spanish'), ('cl7', 'c7', 'English'), ('cl8', 'c8', 'French'),
('cl9', 'c9', 'English'), ('cl10', 'c10', 'Spanish'), ('cl11', 'c11', 'English'), ('cl12', 'c12', 'French'),
('cl13', 'c13', 'English'), ('cl14', 'c14', 'Spanish'), ('cl15', 'c15', 'English'), ('cl16', 'c16', 'French'),
('cl17', 'c17', 'English'), ('cl18', 'c18', 'Spanish'), ('cl19', 'c19', 'English'), ('cl20', 'c20', 'French');

-- Insurances Accepted
INSERT INTO "ClinicianInsurance" (id, clinicianId, insurance) VALUES
('ci1', 'c1', 'Aetna'), ('ci2', 'c2', 'BlueCross'), ('ci3', 'c3', 'Cigna'), ('ci4', 'c4', 'Aetna'),
('ci5', 'c5', 'BlueCross'), ('ci6', 'c6', 'Cigna'), ('ci7', 'c7', 'Aetna'), ('ci8', 'c8', 'BlueCross'),
('ci9', 'c9', 'Cigna'), ('ci10', 'c10', 'Aetna'), ('ci11', 'c11', 'BlueCross'), ('ci12', 'c12', 'Cigna'),
('ci13', 'c13', 'Aetna'), ('ci14', 'c14', 'BlueCross'), ('ci15', 'c15', 'Cigna'), ('ci16', 'c16', 'Aetna'),
('ci17', 'c17', 'BlueCross'), ('ci18', 'c18', 'Cigna'), ('ci19', 'c19', 'Aetna'), ('ci20', 'c20', 'BlueCross');

-- Appointment Types
INSERT INTO "ClinicianAppointmentType" (id, clinicianId, type) VALUES
('cat1', 'c1', 'therapy'), ('cat2', 'c2', 'medication'), ('cat3', 'c3', 'therapy'), ('cat4', 'c4', 'medication'),
('cat5', 'c5', 'therapy'), ('cat6', 'c6', 'medication'), ('cat7', 'c7', 'therapy'), ('cat8', 'c8', 'medication'),
('cat9', 'c9', 'therapy'), ('cat10', 'c10', 'medication'), ('cat11', 'c11', 'therapy'), ('cat12', 'c12', 'medication'),
('cat13', 'c13', 'therapy'), ('cat14', 'c14', 'medication'), ('cat15', 'c15', 'therapy'), ('cat16', 'c16', 'medication'),
('cat17', 'c17', 'therapy'), ('cat18', 'c18', 'medication'), ('cat19', 'c19', 'therapy'), ('cat20', 'c20', 'medication');

-- Clinical Specialties
INSERT INTO "ClinicianClinicalNeed" (id, clinicianId, need) VALUES
('ccn1', 'c1', 'anxiety'), ('ccn2', 'c2', 'depression'), ('ccn3', 'c3', 'trauma'), ('ccn4', 'c4', 'perinatal'),
('ccn5', 'c5', 'lgbtq'), ('ccn6', 'c6', 'couples'), ('ccn7', 'c7', 'grief'), ('ccn8', 'c8', 'stress'),
('ccn9', 'c9', 'anxiety'), ('ccn10', 'c10', 'depression'), ('ccn11', 'c11', 'trauma'), ('ccn12', 'c12', 'perinatal'),
('ccn13', 'c13', 'lgbtq'), ('ccn14', 'c14', 'couples'), ('ccn15', 'c15', 'grief'), ('ccn16', 'c16', 'stress'),
('ccn17', 'c17', 'anxiety'), ('ccn18', 'c18', 'depression'), ('ccn19', 'c19', 'trauma'), ('ccn20', 'c20', 'perinatal');

INSERT INTO "ClinicianTimeSlot" (id, clinicianId, slot) VALUES
('cts1', 'c1', 'morning'), ('cts2', 'c2', 'afternoon'), ('cts3', 'c3', 'evening'), ('cts4', 'c4', 'night'),
('cts5', 'c5', 'morning'), ('cts6', 'c6', 'afternoon'), ('cts7', 'c7', 'evening'), ('cts8', 'c8', 'night'),
('cts9', 'c9', 'morning'), ('cts10', 'c10', 'afternoon'), ('cts11', 'c11', 'evening'), ('cts12', 'c12', 'night'),
('cts13', 'c13', 'morning'), ('cts14', 'c14', 'afternoon'), ('cts15', 'c15', 'evening'), ('cts16', 'c16', 'night'),
('cts17', 'c17', 'morning'), ('cts18', 'c18', 'afternoon'), ('cts19', 'c19', 'evening'), ('cts20', 'c20', 'night');


-- Patients
INSERT INTO "Patient" (id, state, language, genderPreference, insuranceProvider, appointmentType, urgencyLevel, createdAt) VALUES
('p1', 'CA', 'English', 'female', 'Aetna', 'therapy', 'immediate', CURRENT_TIMESTAMP),
('p2', 'NY', 'Spanish', 'male', 'BlueCross', 'medication', 'flexible', CURRENT_TIMESTAMP),
('p3', 'TX', 'English', NULL, 'Cigna', 'therapy', 'immediate', CURRENT_TIMESTAMP),
('p4', 'FL', 'French', 'female', 'Aetna', 'therapy', 'flexible', CURRENT_TIMESTAMP),
('p5', 'CA', 'English', 'male', 'BlueCross', 'medication', 'immediate', CURRENT_TIMESTAMP),
('p6', 'NY', 'Spanish', NULL, 'Cigna', 'therapy', 'flexible', CURRENT_TIMESTAMP),
('p7', 'TX', 'English', 'female', 'Aetna', 'therapy', 'immediate', CURRENT_TIMESTAMP),
('p8', 'FL', 'French', 'male', 'BlueCross', 'medication', 'flexible', CURRENT_TIMESTAMP),
('p9', 'CA', 'English', NULL, 'Cigna', 'therapy', 'immediate', CURRENT_TIMESTAMP),
('p10', 'NY', 'Spanish', 'female', 'Aetna', 'therapy', 'flexible', CURRENT_TIMESTAMP);

-- Patient Clinical Needs
INSERT INTO "PatientClinicalNeed" (id, patientId, need) VALUES
('pcn1', 'p1', 'anxiety'), ('pcn2', 'p2', 'depression'), ('pcn3', 'p3', 'trauma'), ('pcn4', 'p4', 'perinatal'),
('pcn5', 'p5', 'lgbtq'), ('pcn6', 'p6', 'couples'), ('pcn7', 'p7', 'grief'), ('pcn8', 'p8', 'stress'),
('pcn9', 'p9', 'anxiety'), ('pcn10', 'p10', 'depression');

-- Patient Time Slots
INSERT INTO "PatientTimeSlot" (id, patientId, slot) VALUES
('pts1', 'p1', 'morning'), ('pts2', 'p2', 'afternoon'), ('pts3', 'p3', 'evening'), ('pts4', 'p4', 'night'),
('pts5', 'p5', 'morning'), ('pts6', 'p6', 'afternoon'), ('pts7', 'p7', 'evening'), ('pts8', 'p8', 'night'),
('pts9', 'p9', 'morning'), ('pts10', 'p10', 'afternoon');
