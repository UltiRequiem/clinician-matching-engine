
-- === 30 EXTRA MEDICATION CLINICIANS ===
-- IDs: medx1-medx30
INSERT INTO "Clinician" (id, fullName, gender, isAvailableNow, matchCount, createdAt) VALUES
('medx1', 'Dr. MedX 1', 'female', 1, 0, CURRENT_TIMESTAMP),
('medx2', 'Dr. MedX 2', 'male', 1, 0, CURRENT_TIMESTAMP),
('medx3', 'Dr. MedX 3', 'non_binary', 1, 0, CURRENT_TIMESTAMP),
('medx4', 'Dr. MedX 4', 'female', 1, 0, CURRENT_TIMESTAMP),
('medx5', 'Dr. MedX 5', 'male', 1, 0, CURRENT_TIMESTAMP),
('medx6', 'Dr. MedX 6', 'female', 1, 0, CURRENT_TIMESTAMP),
('medx7', 'Dr. MedX 7', 'male', 1, 0, CURRENT_TIMESTAMP),
('medx8', 'Dr. MedX 8', 'non_binary', 1, 0, CURRENT_TIMESTAMP),
('medx9', 'Dr. MedX 9', 'female', 1, 0, CURRENT_TIMESTAMP),
('medx10', 'Dr. MedX 10', 'male', 1, 0, CURRENT_TIMESTAMP),
('medx11', 'Dr. MedX 11', 'female', 1, 0, CURRENT_TIMESTAMP),
('medx12', 'Dr. MedX 12', 'male', 1, 0, CURRENT_TIMESTAMP),
('medx13', 'Dr. MedX 13', 'non_binary', 1, 0, CURRENT_TIMESTAMP),
('medx14', 'Dr. MedX 14', 'female', 1, 0, CURRENT_TIMESTAMP),
('medx15', 'Dr. MedX 15', 'male', 1, 0, CURRENT_TIMESTAMP),
('medx16', 'Dr. MedX 16', 'female', 1, 0, CURRENT_TIMESTAMP),
('medx17', 'Dr. MedX 17', 'male', 1, 0, CURRENT_TIMESTAMP),
('medx18', 'Dr. MedX 18', 'non_binary', 1, 0, CURRENT_TIMESTAMP),
('medx19', 'Dr. MedX 19', 'female', 1, 0, CURRENT_TIMESTAMP),
('medx20', 'Dr. MedX 20', 'male', 1, 0, CURRENT_TIMESTAMP),
('medx21', 'Dr. MedX 21', 'female', 1, 0, CURRENT_TIMESTAMP),
('medx22', 'Dr. MedX 22', 'male', 1, 0, CURRENT_TIMESTAMP),
('medx23', 'Dr. MedX 23', 'non_binary', 1, 0, CURRENT_TIMESTAMP),
('medx24', 'Dr. MedX 24', 'female', 1, 0, CURRENT_TIMESTAMP),
('medx25', 'Dr. MedX 25', 'male', 1, 0, CURRENT_TIMESTAMP),
('medx26', 'Dr. MedX 26', 'female', 1, 0, CURRENT_TIMESTAMP),
('medx27', 'Dr. MedX 27', 'male', 1, 0, CURRENT_TIMESTAMP),
('medx28', 'Dr. MedX 28', 'non_binary', 1, 0, CURRENT_TIMESTAMP),
('medx29', 'Dr. MedX 29', 'female', 1, 0, CURRENT_TIMESTAMP),
('medx30', 'Dr. MedX 30', 'male', 1, 0, CURRENT_TIMESTAMP);

-- States (cycle: CA, NY, TX, FL)
INSERT INTO "ClinicianState" (id, clinicianId, state) VALUES
('medxcs1', 'medx1', 'CA'), ('medxcs2', 'medx2', 'NY'), ('medxcs3', 'medx3', 'TX'), ('medxcs4', 'medx4', 'FL'),
('medxcs5', 'medx5', 'CA'), ('medxcs6', 'medx6', 'NY'), ('medxcs7', 'medx7', 'TX'), ('medxcs8', 'medx8', 'FL'),
('medxcs9', 'medx9', 'CA'), ('medxcs10', 'medx10', 'NY'), ('medxcs11', 'medx11', 'TX'), ('medxcs12', 'medx12', 'FL'),
('medxcs13', 'medx13', 'CA'), ('medxcs14', 'medx14', 'NY'), ('medxcs15', 'medx15', 'TX'), ('medxcs16', 'medx16', 'FL'),
('medxcs17', 'medx17', 'CA'), ('medxcs18', 'medx18', 'NY'), ('medxcs19', 'medx19', 'TX'), ('medxcs20', 'medx20', 'FL'),
('medxcs21', 'medx21', 'CA'), ('medxcs22', 'medx22', 'NY'), ('medxcs23', 'medx23', 'TX'), ('medxcs24', 'medx24', 'FL'),
('medxcs25', 'medx25', 'CA'), ('medxcs26', 'medx26', 'NY'), ('medxcs27', 'medx27', 'TX'), ('medxcs28', 'medx28', 'FL'),
('medxcs29', 'medx29', 'CA'), ('medxcs30', 'medx30', 'NY');

-- Insurances (cycle: Aetna, BlueCross, Cigna)
INSERT INTO "ClinicianInsurance" (id, clinicianId, insurance) VALUES
('medxci1', 'medx1', 'Aetna'), ('medxci2', 'medx2', 'BlueCross'), ('medxci3', 'medx3', 'Cigna'),
('medxci4', 'medx4', 'Aetna'), ('medxci5', 'medx5', 'BlueCross'), ('medxci6', 'medx6', 'Cigna'),
('medxci7', 'medx7', 'Aetna'), ('medxci8', 'medx8', 'BlueCross'), ('medxci9', 'medx9', 'Cigna'),
('medxci10', 'medx10', 'Aetna'), ('medxci11', 'medx11', 'BlueCross'), ('medxci12', 'medx12', 'Cigna'),
('medxci13', 'medx13', 'Aetna'), ('medxci14', 'medx14', 'BlueCross'), ('medxci15', 'medx15', 'Cigna'),
('medxci16', 'medx16', 'Aetna'), ('medxci17', 'medx17', 'BlueCross'), ('medxci18', 'medx18', 'Cigna'),
('medxci19', 'medx19', 'Aetna'), ('medxci20', 'medx20', 'BlueCross'), ('medxci21', 'medx21', 'Cigna'),
('medxci22', 'medx22', 'Aetna'), ('medxci23', 'medx23', 'BlueCross'), ('medxci24', 'medx24', 'Cigna'),
('medxci25', 'medx25', 'Aetna'), ('medxci26', 'medx26', 'BlueCross'), ('medxci27', 'medx27', 'Cigna'),
('medxci28', 'medx28', 'Aetna'), ('medxci29', 'medx29', 'BlueCross'), ('medxci30', 'medx30', 'Cigna');

-- Appointment Type: medication
INSERT INTO "ClinicianAppointmentType" (id, clinicianId, type) VALUES
('medxcat1', 'medx1', 'medication'), ('medxcat2', 'medx2', 'medication'), ('medxcat3', 'medx3', 'medication'),
('medxcat4', 'medx4', 'medication'), ('medxcat5', 'medx5', 'medication'), ('medxcat6', 'medx6', 'medication'),
('medxcat7', 'medx7', 'medication'), ('medxcat8', 'medx8', 'medication'), ('medxcat9', 'medx9', 'medication'),
('medxcat10', 'medx10', 'medication'), ('medxcat11', 'medx11', 'medication'), ('medxcat12', 'medx12', 'medication'),
('medxcat13', 'medx13', 'medication'), ('medxcat14', 'medx14', 'medication'), ('medxcat15', 'medx15', 'medication'),
('medxcat16', 'medx16', 'medication'), ('medxcat17', 'medx17', 'medication'), ('medxcat18', 'medx18', 'medication'),
('medxcat19', 'medx19', 'medication'), ('medxcat20', 'medx20', 'medication'), ('medxcat21', 'medx21', 'medication'),
('medxcat22', 'medx22', 'medication'), ('medxcat23', 'medx23', 'medication'), ('medxcat24', 'medx24', 'medication'),
('medxcat25', 'medx25', 'medication'), ('medxcat26', 'medx26', 'medication'), ('medxcat27', 'medx27', 'medication'),
('medxcat28', 'medx28', 'medication'), ('medxcat29', 'medx29', 'medication'), ('medxcat30', 'medx30', 'medication');

-- Language (cycle: English, Spanish, French)
INSERT INTO "ClinicianLanguage" (id, clinicianId, language) VALUES
('medxcl1', 'medx1', 'English'), ('medxcl2', 'medx2', 'Spanish'), ('medxcl3', 'medx3', 'French'),
('medxcl4', 'medx4', 'English'), ('medxcl5', 'medx5', 'Spanish'), ('medxcl6', 'medx6', 'French'),
('medxcl7', 'medx7', 'English'), ('medxcl8', 'medx8', 'Spanish'), ('medxcl9', 'medx9', 'French'),
('medxcl10', 'medx10', 'English'), ('medxcl11', 'medx11', 'Spanish'), ('medxcl12', 'medx12', 'French'),
('medxcl13', 'medx13', 'English'), ('medxcl14', 'medx14', 'Spanish'), ('medxcl15', 'medx15', 'French'),
('medxcl16', 'medx16', 'English'), ('medxcl17', 'medx17', 'Spanish'), ('medxcl18', 'medx18', 'French'),
('medxcl19', 'medx19', 'English'), ('medxcl20', 'medx20', 'Spanish'), ('medxcl21', 'medx21', 'French'),
('medxcl22', 'medx22', 'English'), ('medxcl23', 'medx23', 'Spanish'), ('medxcl24', 'medx24', 'French'),
('medxcl25', 'medx25', 'English'), ('medxcl26', 'medx26', 'Spanish'), ('medxcl27', 'medx27', 'French'),
('medxcl28', 'medx28', 'English'), ('medxcl29', 'medx29', 'Spanish'), ('medxcl30', 'medx30', 'French');

-- Clinical Need (cycle: anxiety, depression, trauma, perinatal, lgbtq, couples, grief, stress)
INSERT INTO "ClinicianClinicalNeed" (id, clinicianId, need) VALUES
('medxccn1', 'medx1', 'anxiety'), ('medxccn2', 'medx2', 'depression'), ('medxccn3', 'medx3', 'trauma'), ('medxccn4', 'medx4', 'perinatal'),
('medxccn5', 'medx5', 'lgbtq'), ('medxccn6', 'medx6', 'couples'), ('medxccn7', 'medx7', 'grief'), ('medxccn8', 'medx8', 'stress'),
('medxccn9', 'medx9', 'anxiety'), ('medxccn10', 'medx10', 'depression'), ('medxccn11', 'medx11', 'trauma'), ('medxccn12', 'medx12', 'perinatal'),
('medxccn13', 'medx13', 'lgbtq'), ('medxccn14', 'medx14', 'couples'), ('medxccn15', 'medx15', 'grief'), ('medxccn16', 'medx16', 'stress'),
('medxccn17', 'medx17', 'anxiety'), ('medxccn18', 'medx18', 'depression'), ('medxccn19', 'medx19', 'trauma'), ('medxccn20', 'medx20', 'perinatal'),
('medxccn21', 'medx21', 'lgbtq'), ('medxccn22', 'medx22', 'couples'), ('medxccn23', 'medx23', 'grief'), ('medxccn24', 'medx24', 'stress'),
('medxccn25', 'medx25', 'anxiety'), ('medxccn26', 'medx26', 'depression'), ('medxccn27', 'medx27', 'trauma'), ('medxccn28', 'medx28', 'perinatal'),
('medxccn29', 'medx29', 'lgbtq'), ('medxccn30', 'medx30', 'couples');

-- Time Slot (cycle: morning, afternoon, evening, night)
INSERT INTO "ClinicianTimeSlot" (id, clinicianId, slot) VALUES
('medxcts1', 'medx1', 'morning'), ('medxcts2', 'medx2', 'afternoon'), ('medxcts3', 'medx3', 'evening'), ('medxcts4', 'medx4', 'night'),
('medxcts5', 'medx5', 'morning'), ('medxcts6', 'medx6', 'afternoon'), ('medxcts7', 'medx7', 'evening'), ('medxcts8', 'medx8', 'night'),
('medxcts9', 'medx9', 'morning'), ('medxcts10', 'medx10', 'afternoon'), ('medxcts11', 'medx11', 'evening'), ('medxcts12', 'medx12', 'night'),
('medxcts13', 'medx13', 'morning'), ('medxcts14', 'medx14', 'afternoon'), ('medxcts15', 'medx15', 'evening'), ('medxcts16', 'medx16', 'night'),
('medxcts17', 'medx17', 'morning'), ('medxcts18', 'medx18', 'afternoon'), ('medxcts19', 'medx19', 'evening'), ('medxcts20', 'medx20', 'night'),
('medxcts21', 'medx21', 'morning'), ('medxcts22', 'medx22', 'afternoon'), ('medxcts23', 'medx23', 'evening'), ('medxcts24', 'medx24', 'night'),
('medxcts25', 'medx25', 'morning'), ('medxcts26', 'medx26', 'afternoon'), ('medxcts27', 'medx27', 'evening'), ('medxcts28', 'medx28', 'night'),
('medxcts29', 'medx29', 'morning'), ('medxcts30', 'medx30', 'afternoon');

-- === Medication Appointment Type: All State/Insurance Combinations ===
-- States: CA, NY, TX, FL | Insurances: Aetna, BlueCross, Cigna
-- 4 states x 3 insurances = 12 clinicians
INSERT INTO "Clinician" (id, fullName, gender, isAvailableNow, matchCount, createdAt) VALUES
('med1', 'Dr. Med CA Aetna', 'female', 1, 0, CURRENT_TIMESTAMP),
('med2', 'Dr. Med CA BlueCross', 'male', 1, 0, CURRENT_TIMESTAMP),
('med3', 'Dr. Med CA Cigna', 'female', 1, 0, CURRENT_TIMESTAMP),
('med4', 'Dr. Med NY Aetna', 'male', 1, 0, CURRENT_TIMESTAMP),
('med5', 'Dr. Med NY BlueCross', 'female', 1, 0, CURRENT_TIMESTAMP),
('med6', 'Dr. Med NY Cigna', 'male', 1, 0, CURRENT_TIMESTAMP),
('med7', 'Dr. Med TX Aetna', 'female', 1, 0, CURRENT_TIMESTAMP),
('med8', 'Dr. Med TX BlueCross', 'male', 1, 0, CURRENT_TIMESTAMP),
('med9', 'Dr. Med TX Cigna', 'female', 1, 0, CURRENT_TIMESTAMP),
('med10', 'Dr. Med FL Aetna', 'male', 1, 0, CURRENT_TIMESTAMP),
('med11', 'Dr. Med FL BlueCross', 'female', 1, 0, CURRENT_TIMESTAMP),
('med12', 'Dr. Med FL Cigna', 'male', 1, 0, CURRENT_TIMESTAMP);

INSERT INTO "ClinicianState" (id, clinicianId, state) VALUES
('medcs1', 'med1', 'CA'), ('medcs2', 'med2', 'CA'), ('medcs3', 'med3', 'CA'),
('medcs4', 'med4', 'NY'), ('medcs5', 'med5', 'NY'), ('medcs6', 'med6', 'NY'),
('medcs7', 'med7', 'TX'), ('medcs8', 'med8', 'TX'), ('medcs9', 'med9', 'TX'),
('medcs10', 'med10', 'FL'), ('medcs11', 'med11', 'FL'), ('medcs12', 'med12', 'FL');

INSERT INTO "ClinicianInsurance" (id, clinicianId, insurance) VALUES
('medci1', 'med1', 'Aetna'), ('medci2', 'med2', 'BlueCross'), ('medci3', 'med3', 'Cigna'),
('medci4', 'med4', 'Aetna'), ('medci5', 'med5', 'BlueCross'), ('medci6', 'med6', 'Cigna'),
('medci7', 'med7', 'Aetna'), ('medci8', 'med8', 'BlueCross'), ('medci9', 'med9', 'Cigna'),
('medci10', 'med10', 'Aetna'), ('medci11', 'med11', 'BlueCross'), ('medci12', 'med12', 'Cigna');

INSERT INTO "ClinicianAppointmentType" (id, clinicianId, type) VALUES
('medcat1', 'med1', 'medication'), ('medcat2', 'med2', 'medication'), ('medcat3', 'med3', 'medication'),
('medcat4', 'med4', 'medication'), ('medcat5', 'med5', 'medication'), ('medcat6', 'med6', 'medication'),
('medcat7', 'med7', 'medication'), ('medcat8', 'med8', 'medication'), ('medcat9', 'med9', 'medication'),
('medcat10', 'med10', 'medication'), ('medcat11', 'med11', 'medication'), ('medcat12', 'med12', 'medication');

-- Add a language, clinical need, and time slot for completeness
INSERT INTO "ClinicianLanguage" (id, clinicianId, language) VALUES
('medcl1', 'med1', 'English'), ('medcl2', 'med2', 'Spanish'), ('medcl3', 'med3', 'French'),
('medcl4', 'med4', 'English'), ('medcl5', 'med5', 'Spanish'), ('medcl6', 'med6', 'French'),
('medcl7', 'med7', 'English'), ('medcl8', 'med8', 'Spanish'), ('medcl9', 'med9', 'French'),
('medcl10', 'med10', 'English'), ('medcl11', 'med11', 'Spanish'), ('medcl12', 'med12', 'French');

INSERT INTO "ClinicianClinicalNeed" (id, clinicianId, need) VALUES
('medccn1', 'med1', 'anxiety'), ('medccn2', 'med2', 'depression'), ('medccn3', 'med3', 'trauma'),
('medccn4', 'med4', 'perinatal'), ('medccn5', 'med5', 'lgbtq'), ('medccn6', 'med6', 'couples'),
('medccn7', 'med7', 'grief'), ('medccn8', 'med8', 'stress'), ('medccn9', 'med9', 'anxiety'),
('medccn10', 'med10', 'depression'), ('medccn11', 'med11', 'trauma'), ('medccn12', 'med12', 'perinatal');

INSERT INTO "ClinicianTimeSlot" (id, clinicianId, slot) VALUES
('medcts1', 'med1', 'morning'), ('medcts2', 'med2', 'afternoon'), ('medcts3', 'med3', 'evening'),
('medcts4', 'med4', 'night'), ('medcts5', 'med5', 'morning'), ('medcts6', 'med6', 'afternoon'),
('medcts7', 'med7', 'evening'), ('medcts8', 'med8', 'night'), ('medcts9', 'med9', 'morning'),
('medcts10', 'med10', 'afternoon'), ('medcts11', 'med11', 'evening'), ('medcts12', 'med12', 'night');
INSERT INTO "Clinician" (id, fullName, gender, isAvailableNow, matchCount, createdAt) VALUES
('c1001', 'Dr. Newdoc 1', 'female', 1, 0, CURRENT_TIMESTAMP),
('c1002', 'Dr. Newdoc 2', 'male', 0, 1, CURRENT_TIMESTAMP),
('c1003', 'Dr. Newdoc 3', 'non_binary', 1, 2, CURRENT_TIMESTAMP),
('c1004', 'Dr. Newdoc 4', 'female', 0, 3, CURRENT_TIMESTAMP),
('c1005', 'Dr. Newdoc 5', 'male', 1, 1, CURRENT_TIMESTAMP),
('c1006', 'Dr. Newdoc 6', 'female', 1, 2, CURRENT_TIMESTAMP),
('c1007', 'Dr. Newdoc 7', 'male', 0, 0, CURRENT_TIMESTAMP),
('c1008', 'Dr. Newdoc 8', 'non_binary', 1, 1, CURRENT_TIMESTAMP),
('c1009', 'Dr. Newdoc 9', 'female', 0, 2, CURRENT_TIMESTAMP),
('c1010', 'Dr. Newdoc 10', 'male', 1, 3, CURRENT_TIMESTAMP),
('c1011', 'Dr. Newdoc 11', 'female', 1, 0, CURRENT_TIMESTAMP),
('c1012', 'Dr. Newdoc 12', 'male', 0, 1, CURRENT_TIMESTAMP),
('c1013', 'Dr. Newdoc 13', 'non_binary', 1, 2, CURRENT_TIMESTAMP),
('c1014', 'Dr. Newdoc 14', 'female', 0, 3, CURRENT_TIMESTAMP),
('c1015', 'Dr. Newdoc 15', 'male', 1, 1, CURRENT_TIMESTAMP),
('c1016', 'Dr. Newdoc 16', 'female', 1, 2, CURRENT_TIMESTAMP),
('c1017', 'Dr. Newdoc 17', 'male', 0, 0, CURRENT_TIMESTAMP),
('c1018', 'Dr. Newdoc 18', 'non_binary', 1, 1, CURRENT_TIMESTAMP),
('c1019', 'Dr. Newdoc 19', 'female', 0, 2, CURRENT_TIMESTAMP),
('c1020', 'Dr. Newdoc 20', 'male', 1, 3, CURRENT_TIMESTAMP),
('c1021', 'Dr. Newdoc 21', 'female', 1, 0, CURRENT_TIMESTAMP),
('c1022', 'Dr. Newdoc 22', 'male', 0, 1, CURRENT_TIMESTAMP),
('c1023', 'Dr. Newdoc 23', 'non_binary', 1, 2, CURRENT_TIMESTAMP),
('c1024', 'Dr. Newdoc 24', 'female', 0, 3, CURRENT_TIMESTAMP),
('c1025', 'Dr. Newdoc 25', 'male', 1, 1, CURRENT_TIMESTAMP),
('c1026', 'Dr. Newdoc 26', 'female', 1, 2, CURRENT_TIMESTAMP),
('c1027', 'Dr. Newdoc 27', 'male', 0, 0, CURRENT_TIMESTAMP),
('c1028', 'Dr. Newdoc 28', 'non_binary', 1, 1, CURRENT_TIMESTAMP),
('c1029', 'Dr. Newdoc 29', 'female', 0, 2, CURRENT_TIMESTAMP),
('c1030', 'Dr. Newdoc 30', 'male', 1, 3, CURRENT_TIMESTAMP),
('c1031', 'Dr. Newdoc 31', 'female', 1, 0, CURRENT_TIMESTAMP),
('c1032', 'Dr. Newdoc 32', 'male', 0, 1, CURRENT_TIMESTAMP),
('c1033', 'Dr. Newdoc 33', 'non_binary', 1, 2, CURRENT_TIMESTAMP),
('c1034', 'Dr. Newdoc 34', 'female', 0, 3, CURRENT_TIMESTAMP),
('c1035', 'Dr. Newdoc 35', 'male', 1, 1, CURRENT_TIMESTAMP),
('c1036', 'Dr. Newdoc 36', 'female', 1, 2, CURRENT_TIMESTAMP),
('c1037', 'Dr. Newdoc 37', 'male', 0, 0, CURRENT_TIMESTAMP),
('c1038', 'Dr. Newdoc 38', 'non_binary', 1, 1, CURRENT_TIMESTAMP),
('c1039', 'Dr. Newdoc 39', 'female', 0, 2, CURRENT_TIMESTAMP),
('c1040', 'Dr. Newdoc 40', 'male', 1, 3, CURRENT_TIMESTAMP),
('c1041', 'Dr. Newdoc 41', 'female', 1, 0, CURRENT_TIMESTAMP),
('c1042', 'Dr. Newdoc 42', 'male', 0, 1, CURRENT_TIMESTAMP),
('c1043', 'Dr. Newdoc 43', 'non_binary', 1, 2, CURRENT_TIMESTAMP),
('c1044', 'Dr. Newdoc 44', 'female', 0, 3, CURRENT_TIMESTAMP),
('c1045', 'Dr. Newdoc 45', 'male', 1, 1, CURRENT_TIMESTAMP),
('c1046', 'Dr. Newdoc 46', 'female', 1, 2, CURRENT_TIMESTAMP),
('c1047', 'Dr. Newdoc 47', 'male', 0, 0, CURRENT_TIMESTAMP),
('c1048', 'Dr. Newdoc 48', 'non_binary', 1, 1, CURRENT_TIMESTAMP),
('c1049', 'Dr. Newdoc 49', 'female', 0, 2, CURRENT_TIMESTAMP),
('c1050', 'Dr. Newdoc 50', 'male', 1, 3, CURRENT_TIMESTAMP);

-- States Licensed (cycle: CA, NY, TX, FL)
INSERT INTO "ClinicianState" (id, clinicianId, state) VALUES
('cs1001', 'c1001', 'CA'), ('cs1002', 'c1002', 'NY'), ('cs1003', 'c1003', 'TX'), ('cs1004', 'c1004', 'FL'),
('cs1005', 'c1005', 'CA'), ('cs1006', 'c1006', 'NY'), ('cs1007', 'c1007', 'TX'), ('cs1008', 'c1008', 'FL'),
('cs1009', 'c1009', 'CA'), ('cs1010', 'c1010', 'NY'), ('cs1011', 'c1011', 'TX'), ('cs1012', 'c1012', 'FL'),
('cs1013', 'c1013', 'CA'), ('cs1014', 'c1014', 'NY'), ('cs1015', 'c1015', 'TX'), ('cs1016', 'c1016', 'FL'),
('cs1017', 'c1017', 'CA'), ('cs1018', 'c1018', 'NY'), ('cs1019', 'c1019', 'TX'), ('cs1020', 'c1020', 'FL'),
('cs1021', 'c1021', 'CA'), ('cs1022', 'c1022', 'NY'), ('cs1023', 'c1023', 'TX'), ('cs1024', 'c1024', 'FL'),
('cs1025', 'c1025', 'CA'), ('cs1026', 'c1026', 'NY'), ('cs1027', 'c1027', 'TX'), ('cs1028', 'c1028', 'FL'),
('cs1029', 'c1029', 'CA'), ('cs1030', 'c1030', 'NY'), ('cs1031', 'c1031', 'TX'), ('cs1032', 'c1032', 'FL'),
('cs1033', 'c1033', 'CA'), ('cs1034', 'c1034', 'NY'), ('cs1035', 'c1035', 'TX'), ('cs1036', 'c1036', 'FL'),
('cs1037', 'c1037', 'CA'), ('cs1038', 'c1038', 'NY'), ('cs1039', 'c1039', 'TX'), ('cs1040', 'c1040', 'FL'),
('cs1041', 'c1041', 'CA'), ('cs1042', 'c1042', 'NY'), ('cs1043', 'c1043', 'TX'), ('cs1044', 'c1044', 'FL'),
('cs1045', 'c1045', 'CA'), ('cs1046', 'c1046', 'NY');

-- Languages Spoken (cycle: English, Spanish, French)
INSERT INTO "ClinicianLanguage" (id, clinicianId, language) VALUES
('cl1001', 'c1001', 'English'), ('cl1002', 'c1002', 'Spanish'), ('cl1003', 'c1003', 'French'),
('cl1004', 'c1004', 'English'), ('cl1005', 'c1005', 'Spanish'), ('cl1006', 'c1006', 'French'),
('cl1007', 'c1007', 'English'), ('cl1008', 'c1008', 'Spanish'), ('cl1009', 'c1009', 'French'),
('cl1010', 'c1010', 'English'), ('cl1011', 'c1011', 'Spanish'), ('cl1012', 'c1012', 'French'),
('cl1013', 'c1013', 'English'), ('cl1014', 'c1014', 'Spanish'), ('cl1015', 'c1015', 'French'),
('cl1016', 'c1016', 'English'), ('cl1017', 'c1017', 'Spanish'), ('cl1018', 'c1018', 'French'),
('cl1019', 'c1019', 'English'), ('cl1020', 'c1020', 'Spanish'), ('cl1021', 'c1021', 'French'),
('cl1022', 'c1022', 'English'), ('cl1023', 'c1023', 'Spanish'), ('cl1024', 'c1024', 'French'),
('cl1025', 'c1025', 'English'), ('cl1026', 'c1026', 'Spanish'), ('cl1027', 'c1027', 'French'),
('cl1028', 'c1028', 'English'), ('cl1029', 'c1029', 'Spanish'), ('cl1030', 'c1030', 'French'),
('cl1031', 'c1031', 'English'), ('cl1032', 'c1032', 'Spanish'), ('cl1033', 'c1033', 'French'),
('cl1034', 'c1034', 'English'), ('cl1035', 'c1035', 'Spanish'), ('cl1036', 'c1036', 'French'),
('cl1037', 'c1037', 'English'), ('cl1038', 'c1038', 'Spanish'), ('cl1039', 'c1039', 'French'),
('cl1040', 'c1040', 'English'), ('cl1041', 'c1041', 'Spanish'), ('cl1042', 'c1042', 'French'),
('cl1043', 'c1043', 'English'), ('cl1044', 'c1044', 'Spanish'), ('cl1045', 'c1045', 'French'),
('cl1046', 'c1046', 'English'), ('cl1047', 'c1047', 'Spanish'), ('cl1048', 'c1048', 'French'),
('cl1049', 'c1049', 'English'), ('cl1050', 'c1050', 'Spanish');

-- Insurances Accepted (cycle: Aetna, BlueCross, Cigna)
INSERT INTO "ClinicianInsurance" (id, clinicianId, insurance) VALUES
('ci1001', 'c1001', 'Aetna'), ('ci1002', 'c1002', 'BlueCross'), ('ci1003', 'c1003', 'Cigna'),
('ci1004', 'c1004', 'Aetna'), ('ci1005', 'c1005', 'BlueCross'), ('ci1006', 'c1006', 'Cigna'),
('ci1007', 'c1007', 'Aetna'), ('ci1008', 'c1008', 'BlueCross'), ('ci1009', 'c1009', 'Cigna'),
('ci1010', 'c1010', 'Aetna'), ('ci1011', 'c1011', 'BlueCross'), ('ci1012', 'c1012', 'Cigna'),
('ci1013', 'c1013', 'Aetna'), ('ci1014', 'c1014', 'BlueCross'), ('ci1015', 'c1015', 'Cigna'),
('ci1016', 'c1016', 'Aetna'), ('ci1017', 'c1017', 'BlueCross'), ('ci1018', 'c1018', 'Cigna'),
('ci1019', 'c1019', 'Aetna'), ('ci1020', 'c1020', 'BlueCross'), ('ci1021', 'c1021', 'Cigna'),
('ci1022', 'c1022', 'Aetna'), ('ci1023', 'c1023', 'BlueCross'), ('ci1024', 'c1024', 'Cigna'),
('ci1025', 'c1025', 'Aetna'), ('ci1026', 'c1026', 'BlueCross'), ('ci1027', 'c1027', 'Cigna'),
('ci1028', 'c1028', 'Aetna'), ('ci1029', 'c1029', 'BlueCross'), ('ci1030', 'c1030', 'Cigna'),
('ci1031', 'c1031', 'Aetna'), ('ci1032', 'c1032', 'BlueCross'), ('ci1033', 'c1033', 'Cigna'),
('ci1034', 'c1034', 'Aetna'), ('ci1035', 'c1035', 'BlueCross'), ('ci1036', 'c1036', 'Cigna'),
('ci1037', 'c1037', 'Aetna'), ('ci1038', 'c1038', 'BlueCross'), ('ci1039', 'c1039', 'Cigna'),
('ci1040', 'c1040', 'Aetna'), ('ci1041', 'c1041', 'BlueCross'), ('ci1042', 'c1042', 'Cigna'),
('ci1043', 'c1043', 'Aetna'), ('ci1044', 'c1044', 'BlueCross'), ('ci1045', 'c1045', 'Cigna'),
('ci1046', 'c1046', 'Aetna'), ('ci1047', 'c1047', 'BlueCross'), ('ci1048', 'c1048', 'Cigna'),
('ci1049', 'c1049', 'Aetna'), ('ci1050', 'c1050', 'BlueCross');

-- Appointment Types (cycle: therapy, medication)
INSERT INTO "ClinicianAppointmentType" (id, clinicianId, type) VALUES
('cat1001', 'c1001', 'therapy'), ('cat1002', 'c1002', 'medication'),
('cat1003', 'c1003', 'therapy'), ('cat1004', 'c1004', 'medication'),
('cat1005', 'c1005', 'therapy'), ('cat1006', 'c1006', 'medication'),
('cat1007', 'c1007', 'therapy'), ('cat1008', 'c1008', 'medication'),
('cat1009', 'c1009', 'therapy'), ('cat1010', 'c1010', 'medication'),
('cat1011', 'c1011', 'therapy'), ('cat1012', 'c1012', 'medication'),
('cat1013', 'c1013', 'therapy'), ('cat1014', 'c1014', 'medication'),
('cat1015', 'c1015', 'therapy'), ('cat1016', 'c1016', 'medication'),
('cat1017', 'c1017', 'therapy'), ('cat1018', 'c1018', 'medication'),
('cat1019', 'c1019', 'therapy'), ('cat1020', 'c1020', 'medication'),
('cat1021', 'c1021', 'therapy'), ('cat1022', 'c1022', 'medication'),
('cat1023', 'c1023', 'therapy'), ('cat1024', 'c1024', 'medication'),
('cat1025', 'c1025', 'therapy'), ('cat1026', 'c1026', 'medication'),
('cat1027', 'c1027', 'therapy'), ('cat1028', 'c1028', 'medication'),
('cat1029', 'c1029', 'therapy'), ('cat1030', 'c1030', 'medication'),
('cat1031', 'c1031', 'therapy'), ('cat1032', 'c1032', 'medication'),
('cat1033', 'c1033', 'therapy'), ('cat1034', 'c1034', 'medication'),
('cat1035', 'c1035', 'therapy'), ('cat1036', 'c1036', 'medication'),
('cat1037', 'c1037', 'therapy'), ('cat1038', 'c1038', 'medication'),
('cat1039', 'c1039', 'therapy'), ('cat1040', 'c1040', 'medication'),
('cat1041', 'c1041', 'therapy'), ('cat1042', 'c1042', 'medication'),
('cat1043', 'c1043', 'therapy'), ('cat1044', 'c1044', 'medication'),
('cat1045', 'c1045', 'therapy'), ('cat1046', 'c1046', 'medication'),
('cat1047', 'c1047', 'therapy'), ('cat1048', 'c1048', 'medication'),
('cat1049', 'c1049', 'therapy'), ('cat1050', 'c1050', 'medication');

-- Clinical Specialties (cycle: anxiety, depression, trauma, perinatal, lgbtq, couples, grief, stress)
INSERT INTO "ClinicianClinicalNeed" (id, clinicianId, need) VALUES
('ccn1001', 'c1001', 'anxiety'), ('ccn1002', 'c1002', 'depression'), ('ccn1003', 'c1003', 'trauma'), ('ccn1004', 'c1004', 'perinatal'),
('ccn1005', 'c1005', 'lgbtq'), ('ccn1006', 'c1006', 'couples'), ('ccn1007', 'c1007', 'grief'), ('ccn1008', 'c1008', 'stress'),
('ccn1009', 'c1009', 'anxiety'), ('ccn1010', 'c1010', 'depression'), ('ccn1011', 'c1011', 'trauma'), ('ccn1012', 'c1012', 'perinatal'),
('ccn1013', 'c1013', 'lgbtq'), ('ccn1014', 'c1014', 'couples'), ('ccn1015', 'c1015', 'grief'), ('ccn1016', 'c1016', 'stress'),
('ccn1017', 'c1017', 'anxiety'), ('ccn1018', 'c1018', 'depression'), ('ccn1019', 'c1019', 'trauma'), ('ccn1020', 'c1020', 'perinatal'),
('ccn1021', 'c1021', 'lgbtq'), ('ccn1022', 'c1022', 'couples'), ('ccn1023', 'c1023', 'grief'), ('ccn1024', 'c1024', 'stress'),
('ccn1025', 'c1025', 'anxiety'), ('ccn1026', 'c1026', 'depression'), ('ccn1027', 'c1027', 'trauma'), ('ccn1028', 'c1028', 'perinatal'),
('ccn1029', 'c1029', 'lgbtq'), ('ccn1030', 'c1030', 'couples'), ('ccn1031', 'c1031', 'grief'), ('ccn1032', 'c1032', 'stress'),
('ccn1033', 'c1033', 'anxiety'), ('ccn1034', 'c1034', 'depression'), ('ccn1035', 'c1035', 'trauma'), ('ccn1036', 'c1036', 'perinatal'),
('ccn1037', 'c1037', 'lgbtq'), ('ccn1038', 'c1038', 'couples'), ('ccn1039', 'c1039', 'grief'), ('ccn1040', 'c1040', 'stress'),
('ccn1041', 'c1041', 'anxiety'), ('ccn1042', 'c1042', 'depression'), ('ccn1043', 'c1043', 'trauma'), ('ccn1044', 'c1044', 'perinatal'),
('ccn1045', 'c1045', 'lgbtq'), ('ccn1046', 'c1046', 'couples'), ('ccn1047', 'c1047', 'grief'), ('ccn1048', 'c1048', 'stress'),
('ccn1049', 'c1049', 'anxiety'), ('ccn1050', 'c1050', 'depression');

-- Time Slots (cycle: morning, afternoon, evening, night)
INSERT INTO "ClinicianTimeSlot" (id, clinicianId, slot) VALUES
('cts1001', 'c1001', 'morning'), ('cts1002', 'c1002', 'afternoon'), ('cts1003', 'c1003', 'evening'), ('cts1004', 'c1004', 'night'),
('cts1005', 'c1005', 'morning'), ('cts1006', 'c1006', 'afternoon'), ('cts1007', 'c1007', 'evening'), ('cts1008', 'c1008', 'night'),
('cts1009', 'c1009', 'morning'), ('cts1010', 'c1010', 'afternoon'), ('cts1011', 'c1011', 'evening'), ('cts1012', 'c1012', 'night'),
('cts1013', 'c1013', 'morning'), ('cts1014', 'c1014', 'afternoon'), ('cts1015', 'c1015', 'evening'), ('cts1016', 'c1016', 'night'),
('cts1017', 'c1017', 'morning'), ('cts1018', 'c1018', 'afternoon'), ('cts1019', 'c1019', 'evening'), ('cts1020', 'c1020', 'night'),
('cts1021', 'c1021', 'morning'), ('cts1022', 'c1022', 'afternoon'), ('cts1023', 'c1023', 'evening'), ('cts1024', 'c1024', 'night'),
('cts1025', 'c1025', 'morning'), ('cts1026', 'c1026', 'afternoon'), ('cts1027', 'c1027', 'evening'), ('cts1028', 'c1028', 'night'),
('cts1029', 'c1029', 'morning'), ('cts1030', 'c1030', 'afternoon'), ('cts1031', 'c1031', 'evening'), ('cts1032', 'c1032', 'night'),
('cts1033', 'c1033', 'morning'), ('cts1034', 'c1034', 'afternoon'), ('cts1035', 'c1035', 'evening'), ('cts1036', 'c1036', 'night'),
('cts1037', 'c1037', 'morning'), ('cts1038', 'c1038', 'afternoon'), ('cts1039', 'c1039', 'evening'), ('cts1040', 'c1040', 'night'),
('cts1041', 'c1041', 'morning'), ('cts1042', 'c1042', 'afternoon'), ('cts1043', 'c1043', 'evening'), ('cts1044', 'c1044', 'night'),
('cts1045', 'c1045', 'morning'), ('cts1046', 'c1046', 'afternoon'), ('cts1047', 'c1047', 'evening'), ('cts1048', 'c1048', 'night'),
('cts1049', 'c1049', 'morning'), ('cts1050', 'c1050', 'afternoon');
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
('c20', 'Dr. Tina Teal', 'female', 1, 1, CURRENT_TIMESTAMP),
('c21', 'Dr. Uma Indigo', 'female', 1, 2, CURRENT_TIMESTAMP),
('c22', 'Dr. Victor Jade', 'male', 0, 1, CURRENT_TIMESTAMP),
('c23', 'Dr. Wendy Lime', 'female', 1, 0, CURRENT_TIMESTAMP),
('c24', 'Dr. Xavier Mint', 'male', 0, 3, CURRENT_TIMESTAMP),
('c25', 'Dr. Yara Navy', 'female', 1, 1, CURRENT_TIMESTAMP),
('c26', 'Dr. Zack Olive', 'male', 0, 2, CURRENT_TIMESTAMP),
('c27', 'Dr. April Peach', 'female', 1, 0, CURRENT_TIMESTAMP),
('c28', 'Dr. Ben Quartz', 'male', 1, 4, CURRENT_TIMESTAMP),
('c29', 'Dr. Cara Rose', 'female', 0, 2, CURRENT_TIMESTAMP),
('c30', 'Dr. Dean Sage', 'male', 1, 1, CURRENT_TIMESTAMP),
('c31', 'Dr. Elsa Tan', 'female', 0, 0, CURRENT_TIMESTAMP),
('c32', 'Dr. Finn Umber', 'male', 1, 2, CURRENT_TIMESTAMP),
('c33', 'Dr. Gia Violet', 'female', 1, 3, CURRENT_TIMESTAMP),
('c34', 'Dr. Hugo White', 'male', 0, 1, CURRENT_TIMESTAMP),
('c35', 'Dr. Isla Xanthic', 'female', 1, 0, CURRENT_TIMESTAMP),
('c36', 'Dr. Jude Yellow', 'male', 1, 2, CURRENT_TIMESTAMP),
('c37', 'Dr. Kira Zinc', 'non_binary', 0, 1, CURRENT_TIMESTAMP),
('c38', 'Dr. Leo Amber', 'male', 1, 0, CURRENT_TIMESTAMP),
('c39', 'Dr. Mona Blue', 'female', 0, 2, CURRENT_TIMESTAMP),
('c40', 'Dr. Nate Coral', 'male', 1, 1, CURRENT_TIMESTAMP),
('c41', 'Dr. Opal Dove', 'female', 0, 0, CURRENT_TIMESTAMP),
('c42', 'Dr. Pete Elm', 'male', 1, 2, CURRENT_TIMESTAMP),
('c43', 'Dr. Quinn Fern', 'female', 1, 3, CURRENT_TIMESTAMP),
('c44', 'Dr. Rhea Gold', 'female', 0, 1, CURRENT_TIMESTAMP),
('c45', 'Dr. Seth Hazel', 'male', 1, 0, CURRENT_TIMESTAMP),
('c46', 'Dr. Tara Ivory', 'female', 1, 2, CURRENT_TIMESTAMP),
('c47', 'Dr. Ugo Jasper', 'male', 0, 1, CURRENT_TIMESTAMP),
('c48', 'Dr. Vera Kiwi', 'female', 1, 0, CURRENT_TIMESTAMP),
('c49', 'Dr. Walt Lemon', 'male', 1, 2, CURRENT_TIMESTAMP),
('c50', 'Dr. Xena Magenta', 'female', 1, 3, CURRENT_TIMESTAMP),
('c51', 'Dr. Yuri Nickel', 'male', 0, 1, CURRENT_TIMESTAMP),
('c52', 'Dr. Zara Olive', 'female', 1, 0, CURRENT_TIMESTAMP),
('c53', 'Dr. Alan Plum', 'male', 1, 2, CURRENT_TIMESTAMP),
('c54', 'Dr. Bella Quartz', 'female', 0, 1, CURRENT_TIMESTAMP),
('c55', 'Dr. Carl Ruby', 'male', 1, 0, CURRENT_TIMESTAMP),
('c56', 'Dr. Dana Silver', 'female', 1, 2, CURRENT_TIMESTAMP),
('c57', 'Dr. Ethan Topaz', 'male', 0, 1, CURRENT_TIMESTAMP),
('c58', 'Dr. Faye Umber', 'female', 1, 0, CURRENT_TIMESTAMP),
('c59', 'Dr. Glen Violet', 'male', 1, 2, CURRENT_TIMESTAMP),
('c60', 'Dr. Hope White', 'female', 1, 3, CURRENT_TIMESTAMP),
('c61', 'Dr. Ivan Xeno', 'male', 0, 1, CURRENT_TIMESTAMP),
('c62', 'Dr. Jade Yellow', 'female', 1, 0, CURRENT_TIMESTAMP),
('c63', 'Dr. Kyle Zinc', 'non_binary', 1, 2, CURRENT_TIMESTAMP),
('c64', 'Dr. Lana Azure', 'female', 0, 1, CURRENT_TIMESTAMP),
('c65', 'Dr. Max Beige', 'male', 1, 0, CURRENT_TIMESTAMP);

-- States Licensed
INSERT INTO "ClinicianState" (id, clinicianId, state) VALUES
('cs1', 'c1', 'CA'), ('cs2', 'c2', 'NY'), ('cs3', 'c3', 'TX'), ('cs4', 'c4', 'FL'),
('cs5', 'c5', 'CA'), ('cs6', 'c6', 'NY'), ('cs7', 'c7', 'TX'), ('cs8', 'c8', 'FL'),
('cs9', 'c9', 'CA'), ('cs10', 'c10', 'NY'), ('cs11', 'c11', 'TX'), ('cs12', 'c12', 'FL'),
('cs13', 'c13', 'CA'), ('cs14', 'c14', 'NY'), ('cs15', 'c15', 'TX'), ('cs16', 'c16', 'FL'),
('cs17', 'c17', 'CA'), ('cs18', 'c18', 'NY'), ('cs19', 'c19', 'TX'), ('cs20', 'c20', 'FL');

-- States Licensed for new clinicians (cycling through CA, NY, TX, FL)
INSERT INTO "ClinicianState" (id, clinicianId, state) VALUES
('cs21', 'c21', 'CA'), ('cs22', 'c22', 'NY'), ('cs23', 'c23', 'TX'), ('cs24', 'c24', 'FL'),
('cs25', 'c25', 'CA'), ('cs26', 'c26', 'NY'), ('cs27', 'c27', 'TX'), ('cs28', 'c28', 'FL'),
('cs29', 'c29', 'CA'), ('cs30', 'c30', 'NY'), ('cs31', 'c31', 'TX'), ('cs32', 'c32', 'FL'),
('cs33', 'c33', 'CA'), ('cs34', 'c34', 'NY'), ('cs35', 'c35', 'TX'), ('cs36', 'c36', 'FL'),
('cs37', 'c37', 'CA'), ('cs38', 'c38', 'NY'), ('cs39', 'c39', 'TX'), ('cs40', 'c40', 'FL'),
('cs41', 'c41', 'CA'), ('cs42', 'c42', 'NY'), ('cs43', 'c43', 'TX'), ('cs44', 'c44', 'FL'),
('cs45', 'c45', 'CA'), ('cs46', 'c46', 'NY'), ('cs47', 'c47', 'TX'), ('cs48', 'c48', 'FL'),
('cs49', 'c49', 'CA'), ('cs50', 'c50', 'NY'), ('cs51', 'c51', 'TX'), ('cs52', 'c52', 'FL'),
('cs53', 'c53', 'CA'), ('cs54', 'c54', 'NY'), ('cs55', 'c55', 'TX'), ('cs56', 'c56', 'FL'),
('cs57', 'c57', 'CA'), ('cs58', 'c58', 'NY'), ('cs59', 'c59', 'TX'), ('cs60', 'c60', 'FL'),
('cs61', 'c61', 'CA'), ('cs62', 'c62', 'NY'), ('cs63', 'c63', 'TX'), ('cs64', 'c64', 'FL'),
('cs65', 'c65', 'CA');

-- Languages Spoken
INSERT INTO "ClinicianLanguage" (id, clinicianId, language) VALUES
('cl1', 'c1', 'English'), ('cl2', 'c2', 'Spanish'), ('cl3', 'c3', 'English'), ('cl4', 'c4', 'French'),
('cl5', 'c5', 'English'), ('cl6', 'c6', 'Spanish'), ('cl7', 'c7', 'English'), ('cl8', 'c8', 'French'),
('cl9', 'c9', 'English'), ('cl10', 'c10', 'Spanish'), ('cl11', 'c11', 'English'), ('cl12', 'c12', 'French'),
('cl13', 'c13', 'English'), ('cl14', 'c14', 'Spanish'), ('cl15', 'c15', 'English'), ('cl16', 'c16', 'French'),
('cl17', 'c17', 'English'), ('cl18', 'c18', 'Spanish'), ('cl19', 'c19', 'English'), ('cl20', 'c20', 'French');

-- Languages Spoken for new clinicians (cycling through English, Spanish, French)
INSERT INTO "ClinicianLanguage" (id, clinicianId, language) VALUES
('cl21', 'c21', 'English'), ('cl22', 'c22', 'Spanish'), ('cl23', 'c23', 'French'), ('cl24', 'c24', 'English'),
('cl25', 'c25', 'Spanish'), ('cl26', 'c26', 'French'), ('cl27', 'c27', 'English'), ('cl28', 'c28', 'Spanish'),
('cl29', 'c29', 'French'), ('cl30', 'c30', 'English'), ('cl31', 'c31', 'Spanish'), ('cl32', 'c32', 'French'),
('cl33', 'c33', 'English'), ('cl34', 'c34', 'Spanish'), ('cl35', 'c35', 'French'), ('cl36', 'c36', 'English'),
('cl37', 'c37', 'Spanish'), ('cl38', 'c38', 'French'), ('cl39', 'c39', 'English'), ('cl40', 'c40', 'Spanish'),
('cl41', 'c41', 'French'), ('cl42', 'c42', 'English'), ('cl43', 'c43', 'Spanish'), ('cl44', 'c44', 'French'),
('cl45', 'c45', 'English'), ('cl46', 'c46', 'Spanish'), ('cl47', 'c47', 'French'), ('cl48', 'c48', 'English'),
('cl49', 'c49', 'Spanish'), ('cl50', 'c50', 'French'), ('cl51', 'c51', 'English'), ('cl52', 'c52', 'Spanish'),
('cl53', 'c53', 'French'), ('cl54', 'c54', 'English'), ('cl55', 'c55', 'Spanish'), ('cl56', 'c56', 'French'),
('cl57', 'c57', 'English'), ('cl58', 'c58', 'Spanish'), ('cl59', 'c59', 'French'), ('cl60', 'c60', 'English'),
('cl61', 'c61', 'Spanish'), ('cl62', 'c62', 'French'), ('cl63', 'c63', 'English'), ('cl64', 'c64', 'Spanish'),
('cl65', 'c65', 'French');

-- Insurances Accepted
INSERT INTO "ClinicianInsurance" (id, clinicianId, insurance) VALUES
('ci1', 'c1', 'Aetna'), ('ci2', 'c2', 'BlueCross'), ('ci3', 'c3', 'Cigna'), ('ci4', 'c4', 'Aetna'),
('ci5', 'c5', 'BlueCross'), ('ci6', 'c6', 'Cigna'), ('ci7', 'c7', 'Aetna'), ('ci8', 'c8', 'BlueCross'),
('ci9', 'c9', 'Cigna'), ('ci10', 'c10', 'Aetna'), ('ci11', 'c11', 'BlueCross'), ('ci12', 'c12', 'Cigna'),
('ci13', 'c13', 'Aetna'), ('ci14', 'c14', 'BlueCross'), ('ci15', 'c15', 'Cigna'), ('ci16', 'c16', 'Aetna'),
('ci17', 'c17', 'BlueCross'), ('ci18', 'c18', 'Cigna'), ('ci19', 'c19', 'Aetna'), ('ci20', 'c20', 'BlueCross');

-- Insurances Accepted for new clinicians (cycling through Aetna, BlueCross, Cigna)
INSERT INTO "ClinicianInsurance" (id, clinicianId, insurance) VALUES
('ci21', 'c21', 'Aetna'), ('ci22', 'c22', 'BlueCross'), ('ci23', 'c23', 'Cigna'), ('ci24', 'c24', 'Aetna'),
('ci25', 'c25', 'BlueCross'), ('ci26', 'c26', 'Cigna'), ('ci27', 'c27', 'Aetna'), ('ci28', 'c28', 'BlueCross'),
('ci29', 'c29', 'Cigna'), ('ci30', 'c30', 'Aetna'), ('ci31', 'c31', 'BlueCross'), ('ci32', 'c32', 'Cigna'),
('ci33', 'c33', 'Aetna'), ('ci34', 'c34', 'BlueCross'), ('ci35', 'c35', 'Cigna'), ('ci36', 'c36', 'Aetna'),
('ci37', 'c37', 'BlueCross'), ('ci38', 'c38', 'Cigna'), ('ci39', 'c39', 'Aetna'), ('ci40', 'c40', 'BlueCross'),
('ci41', 'c41', 'Cigna'), ('ci42', 'c42', 'Aetna'), ('ci43', 'c43', 'BlueCross'), ('ci44', 'c44', 'Cigna'),
('ci45', 'c45', 'Aetna'), ('ci46', 'c46', 'BlueCross'), ('ci47', 'c47', 'Cigna'), ('ci48', 'c48', 'Aetna'),
('ci49', 'c49', 'BlueCross'), ('ci50', 'c50', 'Cigna'), ('ci51', 'c51', 'Aetna'), ('ci52', 'c52', 'BlueCross'),
('ci53', 'c53', 'Cigna'), ('ci54', 'c54', 'Aetna'), ('ci55', 'c55', 'BlueCross'), ('ci56', 'c56', 'Cigna'),
('ci57', 'c57', 'Aetna'), ('ci58', 'c58', 'BlueCross'), ('ci59', 'c59', 'Cigna'), ('ci60', 'c60', 'Aetna'),
('ci61', 'c61', 'BlueCross'), ('ci62', 'c62', 'Cigna'), ('ci63', 'c63', 'Aetna'), ('ci64', 'c64', 'BlueCross'),
('ci65', 'c65', 'Cigna');

-- Appointment Types
INSERT INTO "ClinicianAppointmentType" (id, clinicianId, type) VALUES
('cat1', 'c1', 'therapy'), ('cat2', 'c2', 'medication'), ('cat3', 'c3', 'therapy'), ('cat4', 'c4', 'medication'),
('cat5', 'c5', 'therapy'), ('cat6', 'c6', 'medication'), ('cat7', 'c7', 'therapy'), ('cat8', 'c8', 'medication'),
('cat9', 'c9', 'therapy'), ('cat10', 'c10', 'medication'), ('cat11', 'c11', 'therapy'), ('cat12', 'c12', 'medication'),
('cat13', 'c13', 'therapy'), ('cat14', 'c14', 'medication'), ('cat15', 'c15', 'therapy'), ('cat16', 'c16', 'medication'),
('cat17', 'c17', 'therapy'), ('cat18', 'c18', 'medication'), ('cat19', 'c19', 'therapy'), ('cat20', 'c20', 'medication');

-- Appointment Types for new clinicians (cycling through therapy, medication)
INSERT INTO "ClinicianAppointmentType" (id, clinicianId, type) VALUES
('cat21', 'c21', 'therapy'), ('cat22', 'c22', 'medication'), ('cat23', 'c23', 'therapy'), ('cat24', 'c24', 'medication'),
('cat25', 'c25', 'therapy'), ('cat26', 'c26', 'medication'), ('cat27', 'c27', 'therapy'), ('cat28', 'c28', 'medication'),
('cat29', 'c29', 'therapy'), ('cat30', 'c30', 'medication'), ('cat31', 'c31', 'therapy'), ('cat32', 'c32', 'medication'),
('cat33', 'c33', 'therapy'), ('cat34', 'c34', 'medication'), ('cat35', 'c35', 'therapy'), ('cat36', 'c36', 'medication'),
('cat37', 'c37', 'therapy'), ('cat38', 'c38', 'medication'), ('cat39', 'c39', 'therapy'), ('cat40', 'c40', 'medication'),
('cat41', 'c41', 'therapy'), ('cat42', 'c42', 'medication'), ('cat43', 'c43', 'therapy'), ('cat44', 'c44', 'medication'),
('cat45', 'c45', 'therapy'), ('cat46', 'c46', 'medication'), ('cat47', 'c47', 'therapy'), ('cat48', 'c48', 'medication'),
('cat49', 'c49', 'therapy'), ('cat50', 'c50', 'medication'), ('cat51', 'c51', 'therapy'), ('cat52', 'c52', 'medication'),
('cat53', 'c53', 'therapy'), ('cat54', 'c54', 'medication'), ('cat55', 'c55', 'therapy'), ('cat56', 'c56', 'medication'),
('cat57', 'c57', 'therapy'), ('cat58', 'c58', 'medication'), ('cat59', 'c59', 'therapy'), ('cat60', 'c60', 'medication'),
('cat61', 'c61', 'therapy'), ('cat62', 'c62', 'medication'), ('cat63', 'c63', 'therapy'), ('cat64', 'c64', 'medication'),
('cat65', 'c65', 'therapy');

-- Clinical Specialties
INSERT INTO "ClinicianClinicalNeed" (id, clinicianId, need) VALUES
('ccn1', 'c1', 'anxiety'), ('ccn2', 'c2', 'depression'), ('ccn3', 'c3', 'trauma'), ('ccn4', 'c4', 'perinatal'),
('ccn5', 'c5', 'lgbtq'), ('ccn6', 'c6', 'couples'), ('ccn7', 'c7', 'grief'), ('ccn8', 'c8', 'stress'),
('ccn9', 'c9', 'anxiety'), ('ccn10', 'c10', 'depression'), ('ccn11', 'c11', 'trauma'), ('ccn12', 'c12', 'perinatal'),
('ccn13', 'c13', 'lgbtq'), ('ccn14', 'c14', 'couples'), ('ccn15', 'c15', 'grief'), ('ccn16', 'c16', 'stress'),
('ccn17', 'c17', 'anxiety'), ('ccn18', 'c18', 'depression'), ('ccn19', 'c19', 'trauma'), ('ccn20', 'c20', 'perinatal');

-- Clinical Specialties for new clinicians (cycling through anxiety, depression, trauma, perinatal, lgbtq, couples, grief, stress)
INSERT INTO "ClinicianClinicalNeed" (id, clinicianId, need) VALUES
('ccn21', 'c21', 'anxiety'), ('ccn22', 'c22', 'depression'), ('ccn23', 'c23', 'trauma'), ('ccn24', 'c24', 'perinatal'),
('ccn25', 'c25', 'lgbtq'), ('ccn26', 'c26', 'couples'), ('ccn27', 'c27', 'grief'), ('ccn28', 'c28', 'stress'),
('ccn29', 'c29', 'anxiety'), ('ccn30', 'c30', 'depression'), ('ccn31', 'c31', 'trauma'), ('ccn32', 'c32', 'perinatal'),
('ccn33', 'c33', 'lgbtq'), ('ccn34', 'c34', 'couples'), ('ccn35', 'c35', 'grief'), ('ccn36', 'c36', 'stress'),
('ccn37', 'c37', 'anxiety'), ('ccn38', 'c38', 'depression'), ('ccn39', 'c39', 'trauma'), ('ccn40', 'c40', 'perinatal'),
('ccn41', 'c41', 'lgbtq'), ('ccn42', 'c42', 'couples'), ('ccn43', 'c43', 'grief'), ('ccn44', 'c44', 'stress'),
('ccn45', 'c45', 'anxiety'), ('ccn46', 'c46', 'depression'), ('ccn47', 'c47', 'trauma'), ('ccn48', 'c48', 'perinatal'),
('ccn49', 'c49', 'lgbtq'), ('ccn50', 'c50', 'couples'), ('ccn51', 'c51', 'grief'), ('ccn52', 'c52', 'stress'),
('ccn53', 'c53', 'anxiety'), ('ccn54', 'c54', 'depression'), ('ccn55', 'c55', 'trauma'), ('ccn56', 'c56', 'perinatal'),
('ccn57', 'c57', 'lgbtq'), ('ccn58', 'c58', 'couples'), ('ccn59', 'c59', 'grief'), ('ccn60', 'c60', 'stress'),
('ccn61', 'c61', 'anxiety'), ('ccn62', 'c62', 'depression'), ('ccn63', 'c63', 'trauma'), ('ccn64', 'c64', 'perinatal'),
('ccn65', 'c65', 'lgbtq');

INSERT INTO "ClinicianTimeSlot" (id, clinicianId, slot) VALUES
('cts1', 'c1', 'morning'), ('cts2', 'c2', 'afternoon'), ('cts3', 'c3', 'evening'), ('cts4', 'c4', 'night'),
('cts5', 'c5', 'morning'), ('cts6', 'c6', 'afternoon'), ('cts7', 'c7', 'evening'), ('cts8', 'c8', 'night'),
('cts9', 'c9', 'morning'), ('cts10', 'c10', 'afternoon'), ('cts11', 'c11', 'evening'), ('cts12', 'c12', 'night'),
('cts13', 'c13', 'morning'), ('cts14', 'c14', 'afternoon'), ('cts15', 'c15', 'evening'), ('cts16', 'c16', 'night'),
('cts17', 'c17', 'morning'), ('cts18', 'c18', 'afternoon'), ('cts19', 'c19', 'evening'), ('cts20', 'c20', 'night');

-- Time Slots for new clinicians (cycling through morning, afternoon, evening, night)
INSERT INTO "ClinicianTimeSlot" (id, clinicianId, slot) VALUES
('cts21', 'c21', 'morning'), ('cts22', 'c22', 'afternoon'), ('cts23', 'c23', 'evening'), ('cts24', 'c24', 'night'),
('cts25', 'c25', 'morning'), ('cts26', 'c26', 'afternoon'), ('cts27', 'c27', 'evening'), ('cts28', 'c28', 'night'),
('cts29', 'c29', 'morning'), ('cts30', 'c30', 'afternoon'), ('cts31', 'c31', 'evening'), ('cts32', 'c32', 'night'),
('cts33', 'c33', 'morning'), ('cts34', 'c34', 'afternoon'), ('cts35', 'c35', 'evening'), ('cts36', 'c36', 'night'),
('cts37', 'c37', 'morning'), ('cts38', 'c38', 'afternoon'), ('cts39', 'c39', 'evening'), ('cts40', 'c40', 'night'),
('cts41', 'c41', 'morning'), ('cts42', 'c42', 'afternoon'), ('cts43', 'c43', 'evening'), ('cts44', 'c44', 'night'),
('cts45', 'c45', 'morning'), ('cts46', 'c46', 'afternoon'), ('cts47', 'c47', 'evening'), ('cts48', 'c48', 'night'),
('cts49', 'c49', 'morning'), ('cts50', 'c50', 'afternoon'), ('cts51', 'c51', 'evening'), ('cts52', 'c52', 'night'),
('cts53', 'c53', 'morning'), ('cts54', 'c54', 'afternoon'), ('cts55', 'c55', 'evening'), ('cts56', 'c56', 'night'),
('cts57', 'c57', 'morning'), ('cts58', 'c58', 'afternoon'), ('cts59', 'c59', 'evening'), ('cts60', 'c60', 'night'),
('cts61', 'c61', 'morning'), ('cts62', 'c62', 'afternoon'), ('cts63', 'c63', 'evening'), ('cts64', 'c64', 'night'),
('cts65', 'c65', 'morning');


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

-- Anxiety
INSERT INTO "Clinician" (id, fullName, gender, isAvailableNow, matchCount, createdAt) VALUES
('c66', 'Dr. Amy Anxiety', 'female', 1, 0, CURRENT_TIMESTAMP),
('c67', 'Dr. Alan Anxiety', 'male', 0, 0, CURRENT_TIMESTAMP);
INSERT INTO "ClinicianState" (id, clinicianId, state) VALUES
('cs66', 'c66', 'CA'), ('cs67', 'c67', 'NY');
INSERT INTO "ClinicianLanguage" (id, clinicianId, language) VALUES
('cl66', 'c66', 'English'), ('cl67', 'c67', 'Spanish');
INSERT INTO "ClinicianInsurance" (id, clinicianId, insurance) VALUES
('ci66', 'c66', 'Aetna'), ('ci67', 'c67', 'BlueCross');
INSERT INTO "ClinicianAppointmentType" (id, clinicianId, type) VALUES
('cat66', 'c66', 'therapy'), ('cat67', 'c67', 'medication');
INSERT INTO "ClinicianClinicalNeed" (id, clinicianId, need) VALUES
('ccn66', 'c66', 'anxiety'), ('ccn67', 'c67', 'anxiety');
INSERT INTO "ClinicianTimeSlot" (id, clinicianId, slot) VALUES
('cts66', 'c66', 'morning'), ('cts67', 'c67', 'afternoon');

-- Depression
INSERT INTO "Clinician" (id, fullName, gender, isAvailableNow, matchCount, createdAt) VALUES
('c68', 'Dr. Dana Depression', 'female', 1, 0, CURRENT_TIMESTAMP),
('c69', 'Dr. Derek Depression', 'male', 0, 0, CURRENT_TIMESTAMP);
INSERT INTO "ClinicianState" (id, clinicianId, state) VALUES
('cs68', 'c68', 'TX'), ('cs69', 'c69', 'FL');
INSERT INTO "ClinicianLanguage" (id, clinicianId, language) VALUES
('cl68', 'c68', 'French'), ('cl69', 'c69', 'English');
INSERT INTO "ClinicianInsurance" (id, clinicianId, insurance) VALUES
('ci68', 'c68', 'Cigna'), ('ci69', 'c69', 'Aetna');
INSERT INTO "ClinicianAppointmentType" (id, clinicianId, type) VALUES
('cat68', 'c68', 'therapy'), ('cat69', 'c69', 'medication');
INSERT INTO "ClinicianClinicalNeed" (id, clinicianId, need) VALUES
('ccn68', 'c68', 'depression'), ('ccn69', 'c69', 'depression');
INSERT INTO "ClinicianTimeSlot" (id, clinicianId, slot) VALUES
('cts68', 'c68', 'evening'), ('cts69', 'c69', 'night');

-- Trauma
INSERT INTO "Clinician" (id, fullName, gender, isAvailableNow, matchCount, createdAt) VALUES
('c70', 'Dr. Tina Trauma', 'female', 1, 0, CURRENT_TIMESTAMP),
('c71', 'Dr. Tom Trauma', 'male', 0, 0, CURRENT_TIMESTAMP);
INSERT INTO "ClinicianState" (id, clinicianId, state) VALUES
('cs70', 'c70', 'CA'), ('cs71', 'c71', 'NY');
INSERT INTO "ClinicianLanguage" (id, clinicianId, language) VALUES
('cl70', 'c70', 'Spanish'), ('cl71', 'c71', 'French');
INSERT INTO "ClinicianInsurance" (id, clinicianId, insurance) VALUES
('ci70', 'c70', 'BlueCross'), ('ci71', 'c71', 'Cigna');
INSERT INTO "ClinicianAppointmentType" (id, clinicianId, type) VALUES
('cat70', 'c70', 'therapy'), ('cat71', 'c71', 'medication');
INSERT INTO "ClinicianClinicalNeed" (id, clinicianId, need) VALUES
('ccn70', 'c70', 'trauma'), ('ccn71', 'c71', 'trauma');
INSERT INTO "ClinicianTimeSlot" (id, clinicianId, slot) VALUES
('cts70', 'c70', 'morning'), ('cts71', 'c71', 'afternoon');

-- Perinatal
INSERT INTO "Clinician" (id, fullName, gender, isAvailableNow, matchCount, createdAt) VALUES
('c72', 'Dr. Paula Perinatal', 'female', 1, 0, CURRENT_TIMESTAMP),
('c73', 'Dr. Peter Perinatal', 'male', 0, 0, CURRENT_TIMESTAMP);
INSERT INTO "ClinicianState" (id, clinicianId, state) VALUES
('cs72', 'c72', 'TX'), ('cs73', 'c73', 'FL');
INSERT INTO "ClinicianLanguage" (id, clinicianId, language) VALUES
('cl72', 'c72', 'English'), ('cl73', 'c73', 'French');
INSERT INTO "ClinicianInsurance" (id, clinicianId, insurance) VALUES
('ci72', 'c72', 'Aetna'), ('ci73', 'c73', 'BlueCross');
INSERT INTO "ClinicianAppointmentType" (id, clinicianId, type) VALUES
('cat72', 'c72', 'therapy'), ('cat73', 'c73', 'medication');
INSERT INTO "ClinicianClinicalNeed" (id, clinicianId, need) VALUES
('ccn72', 'c72', 'perinatal'), ('ccn73', 'c73', 'perinatal');
INSERT INTO "ClinicianTimeSlot" (id, clinicianId, slot) VALUES
('cts72', 'c72', 'evening'), ('cts73', 'c73', 'night');

-- LGBTQ
INSERT INTO "Clinician" (id, fullName, gender, isAvailableNow, matchCount, createdAt) VALUES
('c74', 'Dr. Laura LGBTQ', 'female', 1, 0, CURRENT_TIMESTAMP),
('c75', 'Dr. Luke LGBTQ', 'male', 0, 0, CURRENT_TIMESTAMP);
INSERT INTO "ClinicianState" (id, clinicianId, state) VALUES
('cs74', 'c74', 'CA'), ('cs75', 'c75', 'NY');
INSERT INTO "ClinicianLanguage" (id, clinicianId, language) VALUES
('cl74', 'c74', 'Spanish'), ('cl75', 'c75', 'English');
INSERT INTO "ClinicianInsurance" (id, clinicianId, insurance) VALUES
('ci74', 'c74', 'Cigna'), ('ci75', 'c75', 'Aetna');
INSERT INTO "ClinicianAppointmentType" (id, clinicianId, type) VALUES
('cat74', 'c74', 'therapy'), ('cat75', 'c75', 'medication');
INSERT INTO "ClinicianClinicalNeed" (id, clinicianId, need) VALUES
('ccn74', 'c74', 'lgbtq'), ('ccn75', 'c75', 'lgbtq');
INSERT INTO "ClinicianTimeSlot" (id, clinicianId, slot) VALUES
('cts74', 'c74', 'morning'), ('cts75', 'c75', 'afternoon');

-- Couples
INSERT INTO "Clinician" (id, fullName, gender, isAvailableNow, matchCount, createdAt) VALUES
('c76', 'Dr. Cathy Couples', 'female', 1, 0, CURRENT_TIMESTAMP),
('c77', 'Dr. Carl Couples', 'male', 0, 0, CURRENT_TIMESTAMP);
INSERT INTO "ClinicianState" (id, clinicianId, state) VALUES
('cs76', 'c76', 'TX'), ('cs77', 'c77', 'FL');
INSERT INTO "ClinicianLanguage" (id, clinicianId, language) VALUES
('cl76', 'c76', 'French'), ('cl77', 'c77', 'Spanish');
INSERT INTO "ClinicianInsurance" (id, clinicianId, insurance) VALUES
('ci76', 'c76', 'BlueCross'), ('ci77', 'c77', 'Cigna');
INSERT INTO "ClinicianAppointmentType" (id, clinicianId, type) VALUES
('cat76', 'c76', 'therapy'), ('cat77', 'c77', 'medication');
INSERT INTO "ClinicianClinicalNeed" (id, clinicianId, need) VALUES
('ccn76', 'c76', 'couples'), ('ccn77', 'c77', 'couples');
INSERT INTO "ClinicianTimeSlot" (id, clinicianId, slot) VALUES
('cts76', 'c76', 'evening'), ('cts77', 'c77', 'night');

-- Grief
INSERT INTO "Clinician" (id, fullName, gender, isAvailableNow, matchCount, createdAt) VALUES
('c78', 'Dr. Gina Grief', 'female', 1, 0, CURRENT_TIMESTAMP),
('c79', 'Dr. Greg Grief', 'male', 0, 0, CURRENT_TIMESTAMP);
INSERT INTO "ClinicianState" (id, clinicianId, state) VALUES
('cs78', 'c78', 'CA'), ('cs79', 'c79', 'NY');
INSERT INTO "ClinicianLanguage" (id, clinicianId, language) VALUES
('cl78', 'c78', 'English'), ('cl79', 'c79', 'French');
INSERT INTO "ClinicianInsurance" (id, clinicianId, insurance) VALUES
('ci78', 'c78', 'Aetna'), ('ci79', 'c79', 'BlueCross');
INSERT INTO "ClinicianAppointmentType" (id, clinicianId, type) VALUES
('cat78', 'c78', 'therapy'), ('cat79', 'c79', 'medication');
INSERT INTO "ClinicianClinicalNeed" (id, clinicianId, need) VALUES
('ccn78', 'c78', 'grief'), ('ccn79', 'c79', 'grief');
INSERT INTO "ClinicianTimeSlot" (id, clinicianId, slot) VALUES
('cts78', 'c78', 'morning'), ('cts79', 'c79', 'afternoon');

-- Stress
INSERT INTO "Clinician" (id, fullName, gender, isAvailableNow, matchCount, createdAt) VALUES
('c80', 'Dr. Stella Stress', 'female', 1, 0, CURRENT_TIMESTAMP),
('c81', 'Dr. Steve Stress', 'male', 0, 0, CURRENT_TIMESTAMP);
INSERT INTO "ClinicianState" (id, clinicianId, state) VALUES
('cs80', 'c80', 'TX'), ('cs81', 'c81', 'FL');
INSERT INTO "ClinicianLanguage" (id, clinicianId, language) VALUES
('cl80', 'c80', 'Spanish'), ('cl81', 'c81', 'English');
INSERT INTO "ClinicianInsurance" (id, clinicianId, insurance) VALUES
('ci80', 'c80', 'Cigna'), ('ci81', 'c81', 'Aetna');
INSERT INTO "ClinicianAppointmentType" (id, clinicianId, type) VALUES
('cat80', 'c80', 'therapy'), ('cat81', 'c81', 'medication');
INSERT INTO "ClinicianClinicalNeed" (id, clinicianId, need) VALUES
('ccn80', 'c80', 'stress'), ('ccn81', 'c81', 'stress');
INSERT INTO "ClinicianTimeSlot" (id, clinicianId, slot) VALUES
('cts80', 'c80', 'evening'), ('cts81', 'c81', 'night');

-- === EXTRA CLINICIANS FOR NEW CLINICAL NEEDS ===
-- PTSD
INSERT INTO "Clinician" (id, fullName, gender, isAvailableNow, matchCount, createdAt) VALUES
('c82', 'Dr. Paula PTSD', 'female', 1, 0, CURRENT_TIMESTAMP),
('c83', 'Dr. Peter PTSD', 'male', 0, 0, CURRENT_TIMESTAMP);
INSERT INTO "ClinicianState" (id, clinicianId, state) VALUES
('cs82', 'c82', 'CA'), ('cs83', 'c83', 'NY');
INSERT INTO "ClinicianLanguage" (id, clinicianId, language) VALUES
('cl82', 'c82', 'English'), ('cl83', 'c83', 'Spanish');
INSERT INTO "ClinicianInsurance" (id, clinicianId, insurance) VALUES
('ci82', 'c82', 'Aetna'), ('ci83', 'c83', 'BlueCross');
INSERT INTO "ClinicianAppointmentType" (id, clinicianId, type) VALUES
('cat82', 'c82', 'therapy'), ('cat83', 'c83', 'medication');
INSERT INTO "ClinicianClinicalNeed" (id, clinicianId, need) VALUES
('ccn82', 'c82', 'ptsd'), ('ccn83', 'c83', 'ptsd');
INSERT INTO "ClinicianTimeSlot" (id, clinicianId, slot) VALUES
('cts82', 'c82', 'morning'), ('cts83', 'c83', 'afternoon');

-- OCD
INSERT INTO "Clinician" (id, fullName, gender, isAvailableNow, matchCount, createdAt) VALUES
('c84', 'Dr. Olivia OCD', 'female', 1, 0, CURRENT_TIMESTAMP),
('c85', 'Dr. Oscar OCD', 'male', 0, 0, CURRENT_TIMESTAMP);
INSERT INTO "ClinicianState" (id, clinicianId, state) VALUES
('cs84', 'c84', 'TX'), ('cs85', 'c85', 'FL');
INSERT INTO "ClinicianLanguage" (id, clinicianId, language) VALUES
('cl84', 'c84', 'French'), ('cl85', 'c85', 'English');
INSERT INTO "ClinicianInsurance" (id, clinicianId, insurance) VALUES
('ci84', 'c84', 'Cigna'), ('ci85', 'c85', 'Aetna');
INSERT INTO "ClinicianAppointmentType" (id, clinicianId, type) VALUES
('cat84', 'c84', 'therapy'), ('cat85', 'c85', 'medication');
INSERT INTO "ClinicianClinicalNeed" (id, clinicianId, need) VALUES
('ccn84', 'c84', 'ocd'), ('ccn85', 'c85', 'ocd');
INSERT INTO "ClinicianTimeSlot" (id, clinicianId, slot) VALUES
('cts84', 'c84', 'evening'), ('cts85', 'c85', 'night');

-- Bipolar
INSERT INTO "Clinician" (id, fullName, gender, isAvailableNow, matchCount, createdAt) VALUES
('c86', 'Dr. Bella Bipolar', 'female', 1, 0, CURRENT_TIMESTAMP),
('c87', 'Dr. Ben Bipolar', 'male', 0, 0, CURRENT_TIMESTAMP);
INSERT INTO "ClinicianState" (id, clinicianId, state) VALUES
('cs86', 'c86', 'CA'), ('cs87', 'c87', 'NY');
INSERT INTO "ClinicianLanguage" (id, clinicianId, language) VALUES
('cl86', 'c86', 'Spanish'), ('cl87', 'c87', 'French');
INSERT INTO "ClinicianInsurance" (id, clinicianId, insurance) VALUES
('ci86', 'c86', 'BlueCross'), ('ci87', 'c87', 'Cigna');
INSERT INTO "ClinicianAppointmentType" (id, clinicianId, type) VALUES
('cat86', 'c86', 'therapy'), ('cat87', 'c87', 'medication');
INSERT INTO "ClinicianClinicalNeed" (id, clinicianId, need) VALUES
('ccn86', 'c86', 'bipolar'), ('ccn87', 'c87', 'bipolar');
INSERT INTO "ClinicianTimeSlot" (id, clinicianId, slot) VALUES
('cts86', 'c86', 'morning'), ('cts87', 'c87', 'afternoon');

-- Schizophrenia
INSERT INTO "Clinician" (id, fullName, gender, isAvailableNow, matchCount, createdAt) VALUES
('c88', 'Dr. Sarah Schizophrenia', 'female', 1, 0, CURRENT_TIMESTAMP),
('c89', 'Dr. Sam Schizophrenia', 'male', 0, 0, CURRENT_TIMESTAMP);
INSERT INTO "ClinicianState" (id, clinicianId, state) VALUES
('cs88', 'c88', 'TX'), ('cs89', 'c89', 'FL');
INSERT INTO "ClinicianLanguage" (id, clinicianId, language) VALUES
('cl88', 'c88', 'English'), ('cl89', 'c89', 'French');
INSERT INTO "ClinicianInsurance" (id, clinicianId, insurance) VALUES
('ci88', 'c88', 'Aetna'), ('ci89', 'c89', 'BlueCross');
INSERT INTO "ClinicianAppointmentType" (id, clinicianId, type) VALUES
('cat88', 'c88', 'therapy'), ('cat89', 'c89', 'medication');
INSERT INTO "ClinicianClinicalNeed" (id, clinicianId, need) VALUES
('ccn88', 'c88', 'schizophrenia'), ('ccn89', 'c89', 'schizophrenia');
INSERT INTO "ClinicianTimeSlot" (id, clinicianId, slot) VALUES
('cts88', 'c88', 'evening'), ('cts89', 'c89', 'night');

-- Personality Disorders
INSERT INTO "Clinician" (id, fullName, gender, isAvailableNow, matchCount, createdAt) VALUES
('c90', 'Dr. Penny Personality', 'female', 1, 0, CURRENT_TIMESTAMP),
('c91', 'Dr. Paul Personality', 'male', 0, 0, CURRENT_TIMESTAMP);
INSERT INTO "ClinicianState" (id, clinicianId, state) VALUES
('cs90', 'c90', 'CA'), ('cs91', 'c91', 'NY');
INSERT INTO "ClinicianLanguage" (id, clinicianId, language) VALUES
('cl90', 'c90', 'Spanish'), ('cl91', 'c91', 'English');
INSERT INTO "ClinicianInsurance" (id, clinicianId, insurance) VALUES
('ci90', 'c90', 'Cigna'), ('ci91', 'c91', 'Aetna');
INSERT INTO "ClinicianAppointmentType" (id, clinicianId, type) VALUES
('cat90', 'c90', 'therapy'), ('cat91', 'c91', 'medication');
INSERT INTO "ClinicianClinicalNeed" (id, clinicianId, need) VALUES
('ccn90', 'c90', 'personality_disorders'), ('ccn91', 'c91', 'personality_disorders');
INSERT INTO "ClinicianTimeSlot" (id, clinicianId, slot) VALUES
('cts90', 'c90', 'morning'), ('cts91', 'c91', 'afternoon');

-- Family Issues
INSERT INTO "Clinician" (id, fullName, gender, isAvailableNow, matchCount, createdAt) VALUES
('c92', 'Dr. Fiona Family', 'female', 1, 0, CURRENT_TIMESTAMP),
('c93', 'Dr. Frank Family', 'male', 0, 0, CURRENT_TIMESTAMP);
INSERT INTO "ClinicianState" (id, clinicianId, state) VALUES
('cs92', 'c92', 'TX'), ('cs93', 'c93', 'FL');
INSERT INTO "ClinicianLanguage" (id, clinicianId, language) VALUES
('cl92', 'c92', 'French'), ('cl93', 'c93', 'Spanish');
INSERT INTO "ClinicianInsurance" (id, clinicianId, insurance) VALUES
('ci92', 'c92', 'BlueCross'), ('ci93', 'c93', 'Cigna');
INSERT INTO "ClinicianAppointmentType" (id, clinicianId, type) VALUES
('cat92', 'c92', 'therapy'), ('cat93', 'c93', 'medication');
INSERT INTO "ClinicianClinicalNeed" (id, clinicianId, need) VALUES
('ccn92', 'c92', 'family'), ('ccn93', 'c93', 'family');
INSERT INTO "ClinicianTimeSlot" (id, clinicianId, slot) VALUES
('cts92', 'c92', 'evening'), ('cts93', 'c93', 'night');
