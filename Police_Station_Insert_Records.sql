INSERT INTO OFFICER (OFFICER_NUM, PHONE_NUM, GENDER, NAME, CERTIFICATION_NUM, ADDRESS, COUNTY, SCHEDULE, SUP_OFFICER_NUM)
VALUES 
  (301, '555-111-1111', 'M', 'Tim Smith', '111', '123 Main Street', 'Los Angeles County', 'Day Shift', NULL),
  (302, '555-222-2222', 'F', 'Lisa Campos', '112', '456 Oak Avenue', 'Cook County', 'Night Shift', 702),
  (303, '555-333-3333', 'M', 'James Kirk', '113', '789 Elm Road', 'Maricopa County', 'Day Shift', 701),
  (304, '555-444-4444', 'F', 'Rebecca Hall', '114', '101 Broadway', 'Los Angeles County', 'Night Shift', NULL),
  (305, '555-555-5555', 'M', 'Tom James', '115', '202 Elm Street', 'Cook County', 'Day Shift', 702),
  (306, '555-666-6666', 'M', 'William Johnson', '116', '303 Maple Avenue', 'Maricopa County', 'Night Shift', NULL),
  (307, '555-777-7777', 'F', 'Elizabeth Smith', '117', '404 Oak Drive', 'Los Angeles County', 'Day Shift', 701),
  (308, '555-888-8888', 'M', 'David Lee', '118', '505 Pine Lane', 'Cook County', 'Night Shift', 702),
  (309, '555-999-9999', 'F', 'Linda Davis', '119', '606 Elm Court', 'Maricopa County', 'Day Shift', 703),
  (310, '555-123-4567', 'M', 'James Johnson', '120', '707 Maple Plaza', 'Los Angeles County', 'Night Shift', 701);

INSERT INTO CASE_TABLE (CASE_ID, TIME, ISSUE, CASE_STATUS, INVOLVED_PARTIES, LOCATION, OFFICER_NUM)
VALUES 
  (201, '2023-07-26 10:00:00', 'Theft', 'Open', 'John Doe, Michael Brown, Jane Smith, Sarah Davis', 'Central Park', 301),
  (202, '2023-07-25 14:30:00', 'Assault', 'Closed', 'Emily Williams, Robert Johnson', 'Santa Monica Pier', 302),
  (203, '2023-07-24 09:45:00', 'Burglary', 'Ongoing', 'Jane Doe, Dave White, Tim Jones, Michelle Roberts', 'Chicago Water Tower', 303);

INSERT INTO CASE_FILE (CASE_FILE, SUSPECT, DOCUMENT_DETAILS, DOCUMENTATION_ID, CASE_ID, ISSUE, OFFICER_NUM)
VALUES 
  ('CaseFile001', 'John Doe', 'Case 1 details', 101, 201, 'Theft', 301),
  ('CaseFile002', 'Jane Smith', 'Case 2 details', 102, 202, 'Assault', 302),
  ('CaseFile003', 'Robert Johnson', 'Case 3 details', 103, 203, 'Burglary', 303);

INSERT INTO CASE_FILE_DOC_DETAILS (DOC_DETAILS, DOC_TYPE, CASE_ID, ISSUE, OFFICER_NUM)
VALUES 
  ('Case 1 details', 'Type A', 201, 'Theft', 301),
  ('Case 2 details', 'Type B', 202, 'Assault', 302),
  ('Case 3 details', 'Type C', 203, 'Burglary', 303);

INSERT INTO CASE_FILE_SUSPECT (SUS_ID, SUSPECT, AGE, FIRST_NAME, RECORD, LAST_NAME, MIDDLE_INIT, CASE_ID, ISSUE, OFFICER_NUM)
VALUES 
  (1, 'John Doe', 30, 'John', 'Record 1', 'Doe', 'A', 201, 'Theft', 301),
  (2, 'Jane Smith', 25, 'Jane', 'Record 2', 'Smith', 'B', 202, 'Assault', 302),
  (3, 'Robert Johnson', 40, 'Robert', 'Record 3', 'Johnson', 'C', 203, 'Burglary', 303);

INSERT INTO CASE_INVOLVED_PARTIES (INVOLVED_PARTIES, VICTIMS, SUSPECTS, CASE_ID, ISSUE, OFFICER_NUM)
VALUES 
  ('John Doe, Michael Brown, Jane Smith, Sarah Davis', 'John Doe, Michael Brown', 'Jane Smith, Sarah Davis', 201, 'Theft', 301),
  ('Emily Williams, Robert Johnson', 'Emily Williams', 'Robert Johnson', 202, 'Assault', 302),
  ('Jane Doe, Dave White, Tim Jones, Michelle Roberts', 'Jane Doe, Dave White', 'Tim Jones, Michelle Roberts', 203, 'Burglary', 303);

INSERT INTO CASE_LOCATION (LOCATION, COUNTY, STREET_ADDRESS, ZIP_CODE, BUILDING_NUM, COORDINATES, OFFICER_NUM, CASE_ID, ISSUE)
VALUES 
  ('Central Park', 'New York County', '59th Street and 5th Avenue', '10022', 'Building A', '40.767937° N, 73.981155° W', 301, 201, 'Theft'),
  ('Santa Monica Pier', 'Los Angeles County', '200 Santa Monica Pier', '90401', 'Building B', '34.0089° N, 118.4993° W', 302, 202, 'Assault'),
  ('Chicago Water Tower', 'Cook County', '806 N Michigan Ave', '60611', 'Building C', '41.8975° N, 87.6237° W', 303, 203, 'Burglary');

INSERT INTO COURT (COURT_ID, COURT_OUTCOME, SCHEDULED_CASES, ASSOCIATED_DOCS, COURT_DATE, OFFICER_NUM)
VALUES 
  (401, 'Guilty', '201', 'Document 1', '2023-08-10', 301),
  (402, 'Not Guilty', '202', 'Document 2', '2023-08-12', 302),
  (403, 'Pending', '203', 'Document 3', '2023-08-15', 303);

INSERT INTO COURT_DATE (COURT_DATE, OFFICER_NUM)
VALUES 
  ('2023-08-10', 301),
  ('2023-08-12', 302),
  ('2023-08-15', 303);

INSERT INTO EVIDENCE (EVIDENCE_ID, EVIDENCE, CASE_ID, EVIDENCE_DETAILS, ISSUE, OFFICER_NUM)
VALUES 
  (501, 'Fingerprint', 201, 'Fingerprint found on doorknob', 'Theft', 301),
  (502, 'Weapon', 202, 'Knife found at crime scene', 'Assault', 302),
  (503, 'Surveillance Footage', 203, 'Surveillance video from the location', 'Burglary', 303);

INSERT INTO EVIDENCE_DETAILS (EVIDENCE_DETAILS, STORAGE_LOC, DESCRIPTION, FOUND_LOC, FINDING_OFFICER, CASE_ID, ISSUE, OFFICER_NUM)
VALUES 
  ('Fingerprint found on doorknob', 'Evidence Room A', 'fingerprint lifted from the doorknob', 'Main Entrance', 'Officer Smith', 201, 'Theft', 301),
  ('Knife found at crime scene', 'Evidence Room B', 'Bloodstains on the knife', 'Living Room', 'Officer Campos', 202, 'Assault', 302),
  ('Surveillance video from the location', 'Evidence Room C', 'Video footage showing the suspect', 'Parking Lot', 'Officer Kirk', 203, 'Burglary', 303);

INSERT INTO LOGISTICS (LOGISTICS_ID, LIST_OF_VEHICLE_DETAILS, LIST_OF_SUPPLY_DETAILS, LIST_OF_EQUIPMENT_DETAILS, OFFICER_NUM)
VALUES 
  (601, 'Patrol Vehicle', 'First Aid Kits, Flashlights, Evidence Bags', 'Body Armor, Computer', 301),
  (602, 'Traffic control motorcycle', 'First Aid Kits, Batteries', 'Signs, Cones', 302),
  (603, 'K9 Vehicle', 'First Aid Kits, K9 gear', 'Muzzle, Leash', 303);

INSERT INTO MAKE (MAKE, BRAND, COLOR)
VALUES 
  ('Dodge', 'Charger', 'Black'),
  ('Ford', 'Explorer', 'Black'),
  ('Honda', 'Civic', 'White');

INSERT INTO OFFICER_ADDRESS (ADDRESS, HOUSE_NUM, STREET_NAME, ZIP_CODE, OFFICER_NUM, SUP_OFFICER_NUM)
VALUES 
  ('123 Main Street', '123', 'Main Street', '90012', 301, NULL),
  ('456 Oak Avenue', '456', 'Oak Avenue', '60611', 302, 702),
  ('789 Elm Road', '789', 'Elm Road', '85003', 303, 701),
  ('101 Broadway', '101', 'Broadway', '90015', 304, NULL),
  ('202 Elm Street', '202', 'Elm Street', '60611', 305, 702),
  ('303 Maple Avenue', '303', 'Maple Avenue', '85004', 306, NULL),
  ('404 Oak Drive', '404', 'Oak Drive', '90017', 307, 701),
  ('505 Pine Lane', '505', 'Pine Lane', '60622', 308, 702),
  ('606 Elm Court', '606', 'Elm Court', '85007', 309, 703),
  ('707 Maple Plaza', '707', 'Maple Plaza', '90021', 310, 701);

INSERT INTO OFFICER_NAME (NAME, FIRST_NAME, MIDDLE_INIT, LAST_NAME, OFFICER_NUM, SUP_OFFICER_NUM)
VALUES 
  ('Tim Smith', 'Tim', NULL, 'Smith', 301, NULL),
  ('Lisa Campos', 'Lisa', NULL, 'Campos', 302, 702),
  ('James Kirk', 'James', NULL, 'Kirk', 303, 701),
  ('Rebecca Hall', 'Rebecca', NULL, 'Hall', 304, NULL),
  ('Tom James', 'Tom', NULL, 'James', 305, 702),
  ('William Johnson', 'William', NULL, 'Johnson', 306, NULL),
  ('Elizabeth Smith', 'Elizabeth', NULL, 'Smith', 307, 701),
  ('David Lee', 'David', NULL, 'Lee', 308, 702),
  ('Linda Davis', 'Linda', NULL, 'Davis', 309, 703),
  ('James Johnson', 'James', NULL, 'Johnson', 310, 701);

  INSERT INTO OFFICER_SCHEDULE (SCHEDULE, SHIFT, WEEKDAY, OFFICER_NUM, SUP_OFFICER_NUM)
VALUES 
  ('Mornings', 'Shift 2', 'Monday', 305, 701),
  ('Nights', 'Shift 1', 'Monday', 302, 702),
  ('Evenings', 'Shift 1', 'Monday', 309, 703);

INSERT INTO SUPERVISOR (SUP_OFFICER_NUM, SUP_GENDER, SUP_COUNTY, SUP_PHONE_NUM, SUP_CERTIFICATION, SUP_NAME, SUP_SCHEDULE, SUP_ADDRESS, OFFICER_NUM)
VALUES 
  (701, 'M', 'Los Angeles County', '555-111-1111', '230', 'Tim Smith', 'Mornings', '123 Main Street', 301),
  (702, 'F', 'Los Angeles County', '555-222-2222', '231', 'Rebecca Hall', 'Nights', '101 Broadway', 304),
  (703, 'M', 'Maricopa County', '555-333-3333', '232', 'William Johnson', 'Mornings', '303 Maple Avenue', 306);

INSERT INTO SUPERVISOR_ADDRESS (SUP_ADDRESS, SUP_HOUSE_NUM, SUP_STREET_NAME, SUP_ZIP_CODE, OFFICER_NUM)
VALUES 
  ('123 Main Street', '123', 'Main Street', '90012', 301),
  ('101 Broadway', '101', 'Broadway', '90015', 304),
  ('303 Maple Avenue', '303', 'Maple Avenue', '85004', 306);

INSERT INTO SUPERVISOR_NAME (SUP_NAME, SUP_FIRST_NAME, SUP_MIDDLE_INIT, SUP_LAST_NAME, OFFICER_NUM)
VALUES 
  ('Tim Smith', 'Tim', NULL, 'Smith', 301),
  ('Rebecca Hall', 'Rebecca', NULL, 'Hall', 304),
  ('William Johnson', 'William', NULL, 'Johnson', 306);

  INSERT INTO SUPERVISOR_SCHEDULE (SUP_SCHEDULE, SUP_SHIFT, SUP_WEEKDAY, OFFICER_NUM)
VALUES 
  ('Mornings', 'Shift 2', 'Monday', 301),
  ('Nights', 'Shift 1', 'Monday', 304),
  ('Evenings', 'Shift 1', 'Monday', 306);

INSERT INTO VEHICLE (VIN, AVAILABILITY, MODEL, MAKE, OFFICER_NUM)
VALUES 
  ('1HGCM82633A123456', 'Available', 'Dodge', 'Charger', 301),
  ('2G1WC5E30D1234567', 'In Use', 'Dodge', 'Charger', 302),
  ('JTDBR32E45A123456', 'Available', 'Ford', 'Explorer', 303);
  
INSERT INTO WEAPON (SERIAL_NUM, TYPE, MAINTENANCE, AVAILABILITY, OFFICER_NUM)
VALUES 
  ('ABC123', 'Pistol', 'Cleaned', 'Available', 301),
  ('DEF456', 'Shotgun', 'Dirty', 'In Use', 304),
  ('GHI789', 'Rifle', 'Needs Repair', 'Available', 306),
  ('JKL012', 'Pistol', 'Dirty', 'Available', 302),
  ('MNO345', 'Rifle', 'Cleaned', 'In Use', 303),
  ('PQR678', 'Shotgun', 'Needs Repair', 'Available', 307),
  ('STU901', 'Pistol', 'Cleaned', 'Available', 308),
  ('VWX234', 'Rifle', 'Dirty', 'In Use', 305),
  ('YZA567', 'Pistol', 'Cleaned', 'Available', 310),
  ('BCD890', 'Shotgun', 'Needs Repair', 'Available', 309);
