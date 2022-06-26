CREATE TABLE person (
	personId VARCHAR(5) NOT NULL,
	firstName VARCHAR(15) NOT NULL,
	lastName VARCHAR(15) NOT NULL,
	phoneNumber VARCHAR(15) NOT NULL,
	CONSTRAINT person_pk PRIMARY KEY (personId)
);
 
CREATE TABLE account_type (
	aType VARCHAR(15) NOT NULL,
	CONSTRAINT account_type_pk PRIMARY KEY (aType)
);
 
CREATE TABLE status (
	status VARCHAR(15) NOT NULL,
	CONSTRAINT status_pk PRIMARY KEY (status)
);
 
CREATE TABLE customer (
	customerId VARCHAR(5) NOT NULL,
	personId VARCHAR(5) NOT NULL,
	dateRegistered DATE,
	aType VARCHAR(15) NOT NULL,
	CONSTRAINT customer_pk PRIMARY KEY (customerId),
	CONSTRAINT person_customer_fk FOREIGN KEY (personId) REFERENCES person (personId),
	CONSTRAINT account_type_fk FOREIGN KEY (aType) REFERENCES account_type (aType)  
);
 
CREATE TABLE address (
	customerId VARCHAR(5) NOT NULL,
	aType VARCHAR(15) NOT NULL,
	address VARCHAR(45) NOT NULL,
	CONSTRAINT address_pk PRIMARY KEY (customerId, aType, address),
	CONSTRAINT address_customer_fk FOREIGN KEY (customerId) REFERENCES customer (customerId)
);
 
CREATE TABLE prospective_customer (
	customerId VARCHAR(5) NOT NULL,
	email VARCHAR(25) NOT NULL,
	status VARCHAR(15) NOT NULL,
	CONSTRAINT prospective_customer_pk PRIMARY KEY (customerId),
	CONSTRAINT prospective_customer_customer_fk FOREIGN KEY (customerId) REFERENCES customer (customerId),
	CONSTRAINT prospective_customer_status_fk FOREIGN KEY (status) REFERENCES status (status)
);
 
CREATE TABLE contact_made (
	customerId VARCHAR(5) NOT NULL,
	contactDate DATE NOT NULL,
	CONSTRAINT contact_made_pk PRIMARY KEY (customerId, contactDate),
	CONSTRAINT contact_made_prospective_fk FOREIGN KEY (customerId) REFERENCES prospective_customer (customerId)
);
 
CREATE TABLE special (
	specialId VARCHAR(5) NOT NULL,
	sType VARCHAR(15),
	dateGiven DATE NOT NULL,
	CONSTRAINT special_pk PRIMARY KEY (specialId)
);
 
CREATE TABLE prospective_special (
	customerId VARCHAR(5) NOT NULL,
	specialId VARCHAR(5) NOT NULL,
	quantity INTEGER NOT NULL,
	relationship VARCHAR(15) NOT NULL,
	CONSTRAINT prospective_special_pk PRIMARY KEY (customerId, specialId),
	CONSTRAINT prospective_special_prospective_fk FOREIGN KEY (customerId) REFERENCES prospective_customer (customerId),
	CONSTRAINT prospective_special_special_fk FOREIGN KEY (specialId) REFERENCES special (specialId)
);
 
CREATE TABLE existing_customer (
	customerId VARCHAR(5) NOT NULL,
	email VARCHAR(25) NOT NULL,
	CONSTRAINT existing_customer_pk PRIMARY KEY (customerId),
	CONSTRAINT existing_customer_customer_fk FOREIGN KEY (customerId) REFERENCES customer (customerId)
);
 
CREATE TABLE steady_customer (
	customerId VARCHAR(5) NOT NULL,
	loyaltyPoints INTEGER,
	CONSTRAINT steady_customer_pk PRIMARY KEY (customerId),
	CONSTRAINT steady_existing_customer_fk FOREIGN KEY (customerId) REFERENCES existing_customer (customerId)
);
 
CREATE TABLE premier_customer (
	customerId VARCHAR(5) NOT NULL,
	annualFee INTEGER NOT NULL,
	moneyGenerated INTEGER NOT NULL,
	moneyExpected INTEGER NOT NULL,
	CONSTRAINT premier_customer_pk PRIMARY KEY (customerId),
	CONSTRAINT premier_existing_customer_fk FOREIGN KEY (customerId) REFERENCES existing_customer (customerId)
);
 
CREATE TABLE vehicle (
	vehicleId VARCHAR(5) NOT NULL,
	customerId VARCHAR(5) NOT NULL,
	make VARCHAR(15) NOT NULL,
	model VARCHAR(15) NOT NULL,
	odometer INTEGER NOT NULL,
	estimatedYearlyMileage INTEGER NOT NULL,
	CONSTRAINT vehicle_pk PRIMARY KEY (vehicleId),
	CONSTRAINT vehicle_customer_fk FOREIGN KEY (customerId) REFERENCES customer (customerId)
);
 
CREATE TABLE appointment (
	appointmentId VARCHAR(5) NOT NULL,
	vehicleId VARCHAR(5) NOT NULL,
	dateTime TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	CONSTRAINT appointment_pk PRIMARY KEY (appointmentId),
	CONSTRAINT appointment_vehicle_fk FOREIGN KEY (vehicleId) REFERENCES vehicle (vehicleId)
);
 
CREATE TABLE notification (
	customerId VARCHAR(5) NOT NULL,
	vehicleId VARCHAR(5) NOT NULL,
	nDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	subject VARCHAR(25),
	CONSTRAINT notification_pk PRIMARY KEY (customerId, vehicleId, nDate),
	CONSTRAINT notification_steady_fk FOREIGN KEY (customerId) REFERENCES steady_customer (customerId),
	CONSTRAINT notification_vehicle_fk FOREIGN KEY (vehicleId) REFERENCES vehicle (vehicleId)
);

 
CREATE TABLE employee (
	employeeId VARCHAR(5) NOT NULL,
	personId VARCHAR(5) NOT NULL,
	dateHired DATE NOT NULL,
	address VARCHAR(45) NOT NULL,
	CONSTRAINT employee_pk PRIMARY KEY (employeeId),
	CONSTRAINT employee_person_fk FOREIGN KEY (personId) REFERENCES person (personId)
);
 
CREATE TABLE service_technician (
	employeeId VARCHAR(5) NOT NULL,
	workingStatus VARCHAR(10) NOT NULL,
	CONSTRAINT service_technician_pk PRIMARY KEY (employeeId),
	CONSTRAINT service_technician_employee_fk FOREIGN KEY (employeeId) REFERENCES employee (employeeId)
);
 
CREATE TABLE mechanic (
	employeeId VARCHAR(5) NOT NULL,
	CONSTRAINT mechanic_pk PRIMARY KEY (employeeId),
	CONSTRAINT mechanic_employee_fk FOREIGN KEY (employeeId) REFERENCES employee (employeeId)
);
 
CREATE TABLE skill (
	skillName VARCHAR(20) NOT NULL,
	CONSTRAINT skill_pk PRIMARY KEY (skillName)
);
 
CREATE TABLE mechanic_skill (
	skillName VARCHAR(20) NOT NULL,
	employeeId VARCHAR(5) NOT NULL,
	CONSTRAINT mechanic_skill_pk PRIMARY KEY (skillName, employeeId),
	CONSTRAINT mechanic_skill_mechanic_fk FOREIGN KEY (employeeId) REFERENCES mechanic (employeeId),
	CONSTRAINT mechanic_skill_skill_fk FOREIGN KEY (skillName) REFERENCES skill (skillName)
);
 
CREATE TABLE certification (
	certName VARCHAR(20) NOT NULL,
	CONSTRAINT certification_pk PRIMARY KEY (certName)
);
 
CREATE TABLE mechanic_certification (
	certName VARCHAR(20) NOT NULL,
	employeeId VARCHAR(5) NOT NULL,
	CONSTRAINT mechanic_cert_pk PRIMARY KEY (certName, employeeId),
	CONSTRAINT mechanic_cert_mechanic_fk FOREIGN KEY (employeeId) REFERENCES mechanic (employeeId),
	CONSTRAINT mechanic_cert_cert_fk FOREIGN KEY (certName) REFERENCES certification (certName)
);
 
CREATE TABLE mentorship (
	employeeId VARCHAR(5) NOT NULL,
	menteeId VARCHAR(5) NOT NULL,
	startDate DATE NOT NULL,
	endDate Date NOT NULL,
	skillMentored VARCHAR(20) NOT NULL,
	CONSTRAINT mentorship_pk PRIMARY KEY (employeeId, menteeId,startDate),
	CONSTRAINT mentorship_mechanic_fk FOREIGN KEY (employeeId) REFERENCES mechanic (employeeId),
	CONSTRAINT mentorship_mentee_fk FOREIGN KEY (menteeId) REFERENCES mechanic (employeeId)
);
 
CREATE TABLE maintenance_item (
	itemId VARCHAR(5) NOT NULL,
	itemName VARCHAR(25) NOT NULL,
	skillRequired VARCHAR(25) NOT NULL,
	cost INTEGER NOT NULL,
	CONSTRAINT maintenance_item_pk PRIMARY KEY (itemId)
);
 
CREATE TABLE maintenance_package (
	packageId VARCHAR(5) NOT NULL,
	vehicleId VARCHAR(5) NOT NULL,
	packageName VARCHAR(25) NOT NULL,
	packageCost INTEGER NOT NULL,
	packageDescription VARCHAR(50) NOT NULL,
	maintenanceInterval VARCHAR(25) NOT NULL,
	CONSTRAINT maintenance_package_pk PRIMARY KEY (packageId),
	CONSTRAINT maintenance_package_vehicle_fk FOREIGN KEY (vehicleId) REFERENCES vehicle (vehicleId)
);

CREATE TABLE package_item (
	itemId VARCHAR(5) NOT NULL,
	packageId VARCHAR(5) NOT NULL,
	CONSTRAINT package_item_pk PRIMARY KEY (itemId, packageId),
	CONSTRAINT package_item_package_fk FOREIGN KEY (packageId) REFERENCES maintenance_package (packageId),
	CONSTRAINT package_item_item_fk FOREIGN KEY (itemId) REFERENCES maintenance_item (itemId)
);
 
CREATE TABLE visit_order (
	visitId VARCHAR(5) NOT NULL,
	vehicleId VARCHAR(5) NOT NULL,
	employeeId VARCHAR(5) NOT NULL,
	voDate DATE NOT NULL,
	CONSTRAINT visit_order_pk PRIMARY KEY (visitId),
	CONSTRAINT visit_order_vehicle_fk FOREIGN KEY (vehicleId) REFERENCES vehicle (vehicleId),
	CONSTRAINT visit_oder_employee_fk FOREIGN KEY (employeeId) REFERENCES service_technician (employeeId)
);
 
CREATE TABLE order_item (
	visitId VARCHAR(5) NOT NULL,
	itemId VARCHAR(5) NOT NULL,
	employeeId VARCHAR(5) NOT NULL,
	CONSTRAINT order_item_pk PRIMARY KEY (visitId, itemId),
	CONSTRAINT order_item_visit_fk FOREIGN KEY (visitId) REFERENCES visit_order (visitId),
	CONSTRAINT order_item_item_fk FOREIGN KEY (itemId) REFERENCES maintenance_item (itemId),
	CONSTRAINT order_item_mechanic_fk FOREIGN KEY (employeeId) REFERENCES mechanic (employeeId)
);
