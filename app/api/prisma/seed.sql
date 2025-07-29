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

-- 45 More Clinicians
INSERT INTO "Clinician" (id, fullName, gender, isAvailableNow, matchCount, createdAt) VALUES
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
