Dave's Auto Repair Database
================
Minh
2020-11-03

<br><br>

## 1. Background

Dave's Auto Repair is a rapidly growing auto repair shop based in 
Long Beach, California. Mechanics and technicians at Dave's Auto Repair perform 
repairs and maintenances on roughly 100 vehicles per day. Dave, the owner of the shop, 
believes that moving the shop's data to a database could help increase the month-to-month
performance of the shop. A team was hired to design a database, provide 5 table views and 
perform 15 queries.

### Team Members

-   Joshua Warejko
-   Daniel Sanchez
-   Minh Pham
-   Nhi Nguyen

### The following is a check-list for all the required documentation:
* Class diagram. 
* English description of all classes and associations:
* Denormalization paragraph(s)
* English description of all attributes
* The relation scheme, based on the design
* DDL used to create all the tables
* DML used to insert the data
* Queries to produce the reports, as described below
* Sample output of each of the queries

<br><br>

## 2. Objective
After finalizing the design for the database, the team needs to 
provide 5 table views and perform 15 queries to obtain information needed
by the shop.

### Views
1.   Customer_v – for each customer, indicate his or her name as well as the customer type (prospect, steady or premier) as well as the number of years that customer has been with us.
 
2.   Customer_addresses_v – for each customer, indicate whether they are an individual or a corporate account, and display all of the addresses that we are managing for that customer.
 
3.   Mechanic_mentor_v – reports all of the mentor/mentee relationships at Dave’s, sorted by the name of the mentor, then the name of the mentee.
 
4.   Premier_profits_v – On a year by year basis, show the premier customer’s outlay versus what they would have been charged for the services which they received had they merely been steady customers.
 
5.   Prospective_resurrection_v – List all of the prospective customers who have had three or more contacts, and for whom the most recent contact was more than a year ago.  They might be ripe for another attempt.

### Queries
1.   List the customers.  For each customer, indicate which category he or she fall into, and his or her contact information.
 
2.   For each service visit, list the total cost to the customer for that visit.
 
3.   List the top three customers in terms of their net spending for the past two years, and the total that they have spent in that period.
 
4.   Find all of the mechanics who have three or more skills. 
 
5.   Find all of the mechanics who have three or more skills in common.
 
6.   For each maintenance package, list the total cost of the maintenance package, as well as a list of all of the maintenance items within that package.
 
7.   Find all of those mechanics who have one or more maintenance items that they lacked one or more of the necessary skills.
 
8.   List the customers, sorted by the number of loyalty points that they have, from largest to smallest.
 
9.   The premier customers and the difference between what they have paid in the past year, versus the services that they actually used during that same time.  List from the customers with the largest difference to the smallest.
 
10.  Report on the steady customers based on the net profit that we have made from them over the past year, and the dollar amount of that profit, in order from the greatest to the least.
 
11.  List the three services that we have performed the most in the last year and how many times they were performed.
 
12.  List the three services that have brought in the most money in the last year along with that amount of money.
 
13.  Find the mechanic who is mentoring the most other mechanics.  List the skills that the mechanic is passing along to the other mechanics.
 
14.  Find the three skills that have the fewest mechanics who have those skills.
 
15.  List the employees who are both service technicians as well as mechanics.
 
16.  Four additional queries.
* List all appointments associated with each vehicle order by closest date first
* List all customers with a vehicle that has more than 10,000 miles, sorted by number of  miles from largest to smallest.
* List the top three customers in terms of their number of visits for the past two years, and the total number of visits they have made in that period.
* List all the service technicians, their working status, and the number of visit order they were part of for the past year.

<br><br>

## 3. Class Diagram 
![](class_diagram.png)<!-- -->

<br><br>

## 4. Class Definitions 
Person: A human being regarded as an individual. 

Customer: A customer is any person or corporation who has paid for our services or who we think might pay for our services in the future. 

Existing: A current customer who has paid for our services.

Steady: A customer who signed up for our preventative maintenance E-mail notifications and are likely to come in for routine maintenance.  

Premier: A customer who signed up to pay an annual fee in monthly installments for their preventative maintenance. 

Prospective: A referred person (by our current steady/premier customers) who is not currently paying for our services but may in the future.

Employee: Any person who is getting paid to work for a corporation.

Service Technician: An employee who writes up maintenance visit orders each time a customer comes in. They capture the maintenance items and assign appropriate mechanics to customers. The service technician can be a mechanic.

Mechanic: An employee who repairs and maintains the vehicles.

Notification: An email sent or received from/to a steady customer.

Appointment: An arrangement to meet someone at a particular time. 

Vehicle: A thing used for transporting people on land such as a car or truck.

Visit Order: An arrangement between a customer and a service technician of the maintenance items for a vehicle that a customer brings in.

Maintenance Item: A specific vehicle part that needs preventative maintenance.

Maintenance Package: A set of maintenance items.

Order-Item: An association between a visit order and a maintenance item.

Package-Item: An association between a Maintenance Package and a Maintenance Item.

Mentorship: A relationship in which a more experienced or more knowledgeable person helps to guide a less experienced or less knowledgeable person.

<br><br>

## 2. Associations
A Person is or is not a Customer.
A Customer is a Person.

A Person is or is not an Employee.
An Employee is a Person.

A Customer is or is not an Existing.
An Existing is a Customer.

A Customer is or is not a Prospective.
A Prospective is a Customer.

An Existing is or is not a Steady.
A Steady is an Existing.

An Existing is or is not a Premier.
A Premier is an Existing.

A Steady receives one to many Notifications.
A Notification is received by one and only one Steady.

An Employee is or is not a Service Technician.
A Service Technician is an Employee.

An Employee is or is not a Mechanic.
A Mechanic is an Employee.

A Customer owns one to many Vehicles.
A Vehicle is owned by one and only one Customer.

A Vehicle gets one to many Appointments.
An Appointment is given to one and only one Vehicle.

A Steady receives one to many Notifications.
A Notification is received by one and only one Steady.

A Prospective relates to zero to many Pros-Specials.
A Pros-Special is related to one and only one Prospective.
A Special relates to zero to many Pros-Specials.
A Pros-Special relates to one and only one Special.

A Vehicle relates to one to many Notifications.
A Notification is related to one and only one Vehicle.

A Vehicle is associated with zero to many MaintenancePackages.
A MaintenancePackage is associated to one and only one Vehicle.

A Visit Order contains zero to many Order-Items.
An Order-Item is contained in one and only one Visit Order.
A Maintenance Item contains zero to many Order-Items.
An Order-Item is contained in one and only one Maintenance Item.

A Service Technician writes one to many Visit Orders.
A Visit Order is written by one and only one Service Technician.

A Vehicle is assigned zero to many Visit Orders. 
A Visit Order is assigned to one and only one Vehicle. 

A Mechanic works on zero to many Order-Items.
An Order-Item is worked by one and only one Mechanic.

A Mechanic mentors zero to many Mentorships.
A Mentorship is mentored by one and only one Mechanic.

A Maintenance Package contains zero to many Package-Items.
A Package-Item is contained by one and only one Maintenance Packages.
A Maintenance Item is contained by one to many Package-Items.
A Package-Item contains one and only one Maintenance Item.

A Mechanic knows one to many mechanic-skill.
A Mechanic-skill is known by one and only one mechanic.
A Skill knows one to many Mechanic-skills.
A Mechanic-skill is known by one and only one Skill.

A Mechanic owns one to many Mechanic-Certifications.
A Mechanic-Certification is owned by one and only one Mechanic.
A Certification owns one to many Mechanic-Certifications.
A Mechanic-Certification is owned by one and only one Certification.

<br><br>
## Denormalization
We did not do any denormalization in our design. The max number of tables we have to go through to reach a certain data is five. We believe this won’t do much to slow down our database queries.

<br><br>
## Description of Attributes
### People
* firstName: a personal designation given to someone at birth and used before a family name.
* lastName: a family name
* phoneNumber: a series of numbers that you press on a telephone in order to call someone.

### Customer
* dateRegistered: the day a customer brought his vehicle for the first time for maintenance.
* address: the particulars of the place where a customer lives.
* aType: it indicates if a customer is a private individual or a corporation.

### Existing
* email: messages distributed by electronic means from one computer user to one or more recipients via a network.

### Prospective
* contactDate: the time and day we attempted to contact a prospective customer.
* email: messages distributed by electronic means from one computer user to one or more recipients via a network.
* status: it indicates whether a prospective customer can still become a customer or not.

### Pros-Special
Quantity: the number of special given
Relationship: contact information on their friend/relative from existing customer

### Special 
* sType: the type of special we give to our steady or premier customer.
* dateGiven: the date the special was given to the customer.

### Steady 
* loyaltyPoint: points that the customer receives for spending with us.

### Premier 
* annualFee: the amount that the premier customer pay for their yearly services
* moneyGen: the total money we generated from this premier customer.
* moneyExpected: the total money paid if this premier customer was a steady customer.

### Vehicle 
* make: the manufacturer of the vehicle.
* model: the brand of vehicles sold by a manufacturer.
* odometer: instrument used to measure distance traveled by a vehicle.
* estimatedYearlyMileage: an estimation of the numbers of miles that the customer will put on the vehicle each year.

### Notification 
* subject: the header that gives the key detail of the notification.
* nDate: the date the notification was sent.

### Appointment 
* dateTime: the day and time we expect the customer to be at our shop.

### Employee 
* dateHired: the day an employee became part of Dave’s Automotive.
* address: the particulars of the place where an employee lives.

### Service Technician 
* workingStatus: a classification of service technician as either full time or part time.

### Mentorship 
* startDate: the date that the mentor relationship started.
* endDate: the date that the mentor relationship ended.
* skillMentored: the ability relating to automotive that was taught during the mentor relationship.

### Skill 
* skillName:  the name of an ability relating to automotive.

### Certification 
* certName: the name of a accomplishment given by an organization.

### VisitOrder 
* voDate: the date the visit order was given.
* totalCharge: a calculated cost of the visit order.

### MaintenancePackage 
* packageName: the name of the group of maintenance items.
* packageDescription: a written representation of the group of maintenance items.
* packageCost: the total price of the group of maintenance items.
* maintenanceInterval: the mileage that a customer is expected to bring his/her vehicle in for maintenance.

### Package-Item 
* totalCost: the total cost of all the items included within the package.

### MaintenanceItem 
* itemName: the name of the maintenance item.
* skillRequired: the skill the mechanic needs in order to operate on a maintenance item. 
* cost: the cost of a maintenance item.

### Order-Item 
* numberOfItem: a calculated value of the total number of maintenance items in a visit order.

<br><br>

## DDL
```sql
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

```
<br><br>

## DML
```sql
/***** People *****/
INSERT INTO person VALUES('p01', 'John', 'Bridge', '(949) 222-3333');
INSERT INTO person VALUES('p02', 'Jane', 'Whip', '(949) 123-4567');
INSERT INTO person VALUES('p03', 'Hank', 'Schrader', '(714) 234-9876');
INSERT INTO person VALUES('p04', 'Bridgette', 'Storm', '(949) 426-8567');
INSERT INTO person VALUES('p05', 'Sarah', 'Whethers', '(714) 048-5289');
INSERT INTO person VALUES('p06', 'Zack', 'Maldonado', '(949) 444-6666');
INSERT INTO person VALUES('p07', 'Mike', 'Yin', '(714) 137-8724');
INSERT INTO person VALUES('p08', 'Chris', 'Zemke', '(949) 412-6436');
INSERT INTO person VALUES('p09', 'Linda', 'Stine', '(714) 948-1042');
INSERT INTO person VALUES('p10', 'Winston', 'Mukasa', '(949) 353-6854');
INSERT INTO person VALUES('p11', 'Ryan', 'Reigns', '(949) 415-9874');
INSERT INTO person VALUES('p12', 'Jake', 'Johnson', '(949) 412-8572');
INSERT INTO person VALUES('p13', 'Stewart', 'Hancock', '(714) 736-8643');
INSERT INTO person VALUES('p14', 'Paul', 'Rayn', '(949) 234-6543');
INSERT INTO person VALUES('p15', 'Aaron', 'Paul', '(714) 683-3951');
 
/***** Customer Account Types *****/
INSERT INTO account_type VALUES('private');
INSERT INTO account_type VALUES('corporation');
 
/***** Statuses *****/
INSERT INTO status VALUES('dead_pro');
INSERT INTO status VALUES('current_pro');
 
/***** Customers *****/
INSERT INTO customer VALUES('c01', 'p01', '2016-09-12', 'private');
INSERT INTO customer VALUES('c02', 'p02', '2015-07-11', 'private');
INSERT INTO customer VALUES('c03', 'p03', '2015-09-21', 'private');
INSERT INTO customer VALUES('c04', 'p04', '2016-11-06', 'corporation');
INSERT INTO customer VALUES('c05', 'p05', '2014-12-20', 'private');
INSERT INTO customer VALUES('c06', 'p06', '2016-05-12', 'corporation');
INSERT INTO customer VALUES('c07', 'p07', '2015-03-29', 'private');
INSERT INTO customer VALUES('c08', 'p08', '2016-02-25', 'corporation');
 
/***** Prospective Customers *****/
INSERT INTO prospective_customer VALUES('c02', 'jane@whip.com', 'current_pro');
INSERT INTO prospective_customer VALUES('c04', 'chris@zemke.com', 'current_pro');
INSERT INTO prospective_customer VALUES('c07', 'winston@mukasa.com', 'dead_pro');
 
/***** Contact Made *****/
INSERT INTO contact_made VALUES('c02', '2015-11-20');
INSERT INTO contact_made VALUES('c02', '2016-03-20');
INSERT INTO contact_made VALUES('c04', '2016-12-01');
INSERT INTO contact_made VALUES('c07', '2015-04-01');
INSERT INTO contact_made VALUES('c07', '2015-06-01');
INSERT INTO contact_made VALUES('c07', '2015-11-01');
 
/***** Existing Customers *****/
INSERT INTO existing_customer VALUES('c01', 'john@bridge.com');
INSERT INTO existing_customer VALUES('c03', 'bridgette@storm.com');
INSERT INTO existing_customer VALUES('c05', 'zack@maldonado.com');
INSERT INTO existing_customer VALUES('c06', 'mike@yin.com');
INSERT INTO existing_customer VALUES('c08', 'linda@stine.com');
 
/***** Steady Customers ******/
INSERT INTO steady_customer VALUES('c01', 200);
INSERT INTO steady_customer VALUES('c05', 100);
INSERT INTO steady_customer VALUES('c08', 150);
 
/***** Premier Customers *****/
INSERT INTO premier_customer VALUES('c03', 1000, 100, 200);
INSERT INTO premier_customer VALUES('c06', 850, 50, 200);
 
/***** Vehicles *****/
INSERT INTO vehicle VALUES('v01', 'c01', 'Mazdaspeed', '3', 45000, 12000);
INSERT INTO vehicle VALUES('v02', 'c02', 'McLaren', 'P1', 3000, 1500);
INSERT INTO vehicle VALUES('v03', 'c03', 'Audi', 'R8', 10000, 1000);
INSERT INTO vehicle VALUES('v04', 'c04', 'Ferrari', '458', 12000, 1800);
INSERT INTO vehicle VALUES('v05', 'c05', 'Aston Martin', 'Vantage', 6000, 2000);
INSERT INTO vehicle VALUES('v06', 'c06', 'Porsche', '918', 8000, 1750);
INSERT INTO vehicle VALUES('v07', 'c07', 'Rolls Royce', 'Ghost', 25000, 2000);
INSERT INTO vehicle VALUES('v08', 'c08', 'Ford Focus', 'RS', 35000, 10000);
INSERT INTO vehicle VALUES('v09', 'c01', 'Mercedez', 'C63', 40000, 9000);
 
/***** Appointments *****/
INSERT INTO appointment VALUES('a01', 'v01', '2016-12-2 08:00:00');
INSERT INTO appointment VALUES('a02', 'v01', '2017-02-2 08:00:00');
INSERT INTO appointment VALUES('a03', 'v03', '2016-12-2 10:00:00');
INSERT INTO appointment VALUES('a04', 'v03', '2016-02-3 12:30:00');
INSERT INTO appointment VALUES('a05', 'v05', '2016-12-18 13:15:00');
INSERT INTO appointment VALUES('a06', 'v06', '2017-03-22 08:30:00');
INSERT INTO appointment VALUES('a07', 'v08', '2017-01-05 14:30:00');
 
/***** Notifications *****/
INSERT INTO notification VALUES('c01', 'v01', '2016-11-30 07:22:12', 'Oil Change');
INSERT INTO notification VALUES('c01', 'v09', '2016-12-12 08:25:40', 'Air Filters and Tires');
INSERT INTO notification VALUES('c05', 'v05', '2016-12-01 12:22:12', 'Oil Change');
INSERT INTO notification VALUES('c08', 'v08', '2016-12-01 12:22:12', 'Tire Rotation');
 
/***** Addresses *****/
INSERT INTO address VALUES('c01', 'mailing', '1234 Cantberry Way, CA 92244');
INSERT INTO address VALUES('c02', 'mailing', '415 Baronet, Mission Viejo, CA 92692');
INSERT INTO address VALUES('c03', 'mailing', '10 Roberts, Coto de Caza, CA 92604');
INSERT INTO address VALUES('c04', 'mailing', '1 Tudor Way, Ladera Ranch, CA 92604');
INSERT INTO address VALUES('c04', 'billing', '8 Rancho Circle, Lake Forest, CA 92622');
INSERT INTO address VALUES('c04', 'pickup', '27702 The Way, Ocean Ranch, CA 92699');
INSERT INTO address VALUES('c05', 'mailing', '1456 Man Street, Porland, OR 92213');
INSERT INTO address VALUES('c06', 'mailing', '9524 Oak St. Laguna Niguel, CA 92677');
INSERT INTO address VALUES('c06', 'billing', '8496 Cambridge St. Baldwin Park, CA 91706');
INSERT INTO address VALUES('c07', 'mailing', '8344 Heather St. San Francisco, CA 94109');
INSERT INTO address VALUES('c08', 'mailing', '73 Myrtle Dr. Sacramento, CA 95823');
INSERT INTO address VALUES('c08', 'billing', '9606 Branch Lane Tustin, CA 92780');
INSERT INTO address VALUES('c08', 'pickup', '9027 Bay St. Long Beach, CA 90813');
INSERT INTO address VALUES('c08', 'delivery', '844 Honey Creek St. Huntington Park, CA 90255');
 
/***** Employees *****/
INSERT INTO employee VALUES('e01', 'p09', '2015-02-08', '1234 Straton Way, Mission, CA 92554');
INSERT INTO employee VALUES('e02', 'p10', '2016-01-15', '5436 Craig Streey, Mission, CA 92555');
INSERT INTO employee VALUES('e03', 'p11', '2014-04-20', '78349 Street, Mission, CA 92655');
INSERT INTO employee VALUES('e04', 'p12', '2015-01-04', '4324 Thompson Street, Irvine, CA 92614');
INSERT INTO employee VALUES('e05', 'p13', '2016-07-23', '12312 Him Way, Mission, CA 99223');
INSERT INTO employee VALUES('e06', 'p14', '2014-07-28', '12 Can Way, Irvine, CA 92655');
INSERT INTO employee VALUES('e07', 'p15', '2016-03-11', '123 Street, Mission, CA 21313');

/***** Mechanics *****/
INSERT INTO mechanic VALUES('e02');
INSERT INTO mechanic VALUES('e03');
INSERT INTO mechanic VALUES('e04');
INSERT INTO mechanic VALUES('e05');
INSERT INTO mechanic VALUES('e06');

/***** Skill *****/
INSERT INTO skill VALUES('Tire Rotation');
INSERT INTO skill VALUES('Oil Change');
INSERT INTO skill VALUES('Air Filter');
INSERT INTO skill VALUES('Brakes');
INSERT INTO skill VALUES('Tire Change');
INSERT INTO skill VALUES('Timing Belts');
INSERT INTO skill VALUES('Ring Operation');
INSERT INTO skill VALUES('Hoist Operation');
INSERT INTO skill VALUES('Head Machining');
 
/***** Mechanic Skill *****/
INSERT INTO mechanic_skill VALUES('Tire Rotation', 'e02');
INSERT INTO mechanic_skill VALUES('Oil Change', 'e02');
INSERT INTO mechanic_skill VALUES('Tire Change', 'e02');
INSERT INTO mechanic_skill VALUES('Timing Belts', 'e02');
INSERT INTO mechanic_skill VALUES('Air Filter', 'e03');
INSERT INTO mechanic_skill VALUES('Brakes', 'e03');
INSERT INTO mechanic_skill VALUES('Tire Change', 'e03');
INSERT INTO mechanic_skill VALUES('Oil Change', 'e03');
INSERT INTO mechanic_skill VALUES('Ring Operation', 'e04');
INSERT INTO mechanic_skill VALUES('Brakes', 'e04');
INSERT INTO mechanic_skill VALUES('Oil Change', 'e04');
INSERT INTO mechanic_skill VALUES('Hoist Operation', 'e05');
INSERT INTO mechanic_skill VALUES('Head Machining', 'e05');
INSERT INTO mechanic_skill VALUES('Air Filter', 'e05');
INSERT INTO mechanic_skill VALUES('Brakes', 'e05');
INSERT INTO mechanic_skill VALUES('Tire Rotation', 'e06');
INSERT INTO mechanic_skill VALUES('Head Machining', 'e06');
INSERT INTO mechanic_skill VALUES('Brakes', 'e06');
INSERT INTO mechanic_skill VALUES('Tire Rotation', 'e03');
INSERT INTO mechanic_skill VALUES('Oil Change', 'e06');
INSERT INTO mechanic_skill VALUES('Tire Change', 'e06');

/***** Certification *****/
INSERT INTO certification VALUES('Masters');
INSERT INTO certification VALUES('Manufacturer');
 
/***** Mechanic Certification *****/
INSERT INTO mechanic_certification VALUES('Masters', 'e02');
INSERT INTO mechanic_certification VALUES('Manufacturer', 'e02');
INSERT INTO mechanic_certification VALUES('Masters', 'e03');
INSERT INTO mechanic_certification VALUES('Masters', 'e04');
INSERT INTO mechanic_certification VALUES('Manufacturer', 'e05');
INSERT INTO mechanic_certification VALUES('Masters', 'e06');
INSERT INTO mechanic_certification VALUES('Manufacturer', 'e06');
 
/***** Maintenance Items *****/
INSERT INTO maintenance_item VALUES('i01', 'Tire Rotation', 'tires', 30);
INSERT INTO maintenance_item VALUES('i02', 'Oil Change', 'oil', 65);
INSERT INTO maintenance_item VALUES('i03', 'Air Filter', 'air filters', 40);
INSERT INTO maintenance_item VALUES('i04', 'Brakes', 'brakes', 150);
INSERT INTO maintenance_item VALUES('i05', 'Tire Change', 'tires', 500);
INSERT INTO maintenance_item VALUES('i06', 'Timing Belts', 'engine', 400);

/***** Mentorship *****/
INSERT INTO mentorship VALUES('e02', 'e03', '2015-06-05', '2015-07-20', 'Oil Change');
INSERT INTO mentorship VALUES('e02', 'e06', '2016-09-03', '2016-11-03', 'Oil Change');
INSERT INTO mentorship VALUES('e02', 'e04', '2016-01-10', '2016-03-01', 'Hoist Operation');
INSERT INTO mentorship VALUES('e03', 'e02', '2016-01-01', '2016-05-28', 'Timing Belts');
INSERT INTO mentorship VALUES('e04', 'e05', '2016-03-01', '2016-06-28', 'Brakes');
INSERT INTO mentorship VALUES('e05', 'e06', '2016-11-01', '2016-12-28', 'Air Filter');

/***** Service_Technician *****/
INSERT INTO service_technician VALUES('e01','full time');
INSERT INTO service_technician VALUES('e03','part time');
INSERT INTO service_technician VALUES('e07','full time');

/***** Visit_Order *****/
INSERT INTO visit_order VALUES('o01','v01','e01','2016-04-14');
INSERT INTO visit_order VALUES('o02','v01','e03','2016-07-28');
INSERT INTO visit_order VALUES('o03','v05','e03','2015-01-04');
INSERT INTO visit_order VALUES('o04','v08','e01','2014-05-12');
INSERT INTO visit_order VALUES('o05','v07','e03','2016-07-26');
INSERT INTO visit_order VALUES('o06','v04','e01','2016-12-24');
INSERT INTO visit_order VALUES('o07','v02','e01','2015-11-18');
INSERT INTO visit_order VALUES('o08','v08','e03','2014-02-20');
INSERT INTO visit_order VALUES('o09','v08','e01','2011-05-21');

INSERT INTO visit_order VALUES('o10','v08','e01','2014-08-14');
INSERT INTO visit_order VALUES('o11','v05','e03','2015-06-28');
INSERT INTO visit_order VALUES('o12','v05','e03','2015-12-04');
INSERT INTO visit_order VALUES('o13','v05','e01','2016-01-01');
INSERT INTO visit_order VALUES('o14','v05','e03','2016-07-26');
INSERT INTO visit_order VALUES('o15','v05','e01','2016-12-03');
INSERT INTO visit_order VALUES('o16','v01','e01','2016-08-18');
INSERT INTO visit_order VALUES('o17','v01','e03','2016-09-20');
INSERT INTO visit_order VALUES('o18','v01','e01','2016-11-21');

INSERT INTO visit_order VALUES('o19','v06','e01','2015-05-25');
INSERT INTO visit_order VALUES('o20','v06','e03','2015-11-24');
INSERT INTO visit_order VALUES('o21','v06','e03','2016-05-18');
INSERT INTO visit_order VALUES('o22','v06','e01','2016-11-08');
INSERT INTO visit_order VALUES('o23','v03', 'e03','2015-11-20');
INSERT INTO visit_order VALUES('o24','v03','e01','2016-03-20');
INSERT INTO visit_order VALUES('o25','v03','e01','2016-06-21');
INSERT INTO visit_order VALUES('o26','v03','e03','2016-09-19');
INSERT INTO visit_order VALUES('o27','v03','e01','2016-12-01');

/***** Order_item *****/
INSERT INTO order_item VALUES('o01','i06','e02');
INSERT INTO order_item VALUES('o01','i02','e02');
INSERT INTO order_item VALUES('o01','i04','e03');
INSERT INTO order_item VALUES('o02','i02','e02');
INSERT INTO order_item VALUES('o02','i01','e02');
INSERT INTO order_item VALUES('o03','i05','e03');
INSERT INTO order_item VALUES('o03','i04','e03');
INSERT INTO order_item VALUES('o03','i01','e02');
INSERT INTO order_item VALUES('o04','i02','e02');
INSERT INTO order_item VALUES('o04','i06','e02');
INSERT INTO order_item VALUES('o04','i01','e02');
INSERT INTO order_item VALUES('o05','i04','e03');
INSERT INTO order_item VALUES('o05','i01','e02');
INSERT INTO order_item VALUES('o06','i06','e02');
INSERT INTO order_item VALUES('o07','i05','e03');
INSERT INTO order_item VALUES('o08','i05','e03');
INSERT INTO order_item VALUES('o09','i02','e02');
INSERT INTO order_item VALUES('o10','i02','e02');
INSERT INTO order_item VALUES('o11','i03','e03');
INSERT INTO order_item VALUES('o12','i04','e03');
INSERT INTO order_item VALUES('o13','i02','e02');
INSERT INTO order_item VALUES('o14','i02','e02');
INSERT INTO order_item VALUES('o15','i05','e03');
INSERT INTO order_item VALUES('o16','i02','e02');
INSERT INTO order_item VALUES('o17','i04','e03');
INSERT INTO order_item VALUES('o17','i02','e02');
INSERT INTO order_item VALUES('o18','i02','e03');
INSERT INTO order_item VALUES('o19','i02','e02');
INSERT INTO order_item VALUES('o20','i05','e03');
INSERT INTO order_item VALUES('o21','i02','e02');
INSERT INTO order_item VALUES('o22','i05','e03');
INSERT INTO order_item VALUES('o23','i01','e02');
INSERT INTO order_item VALUES('o24','i04','e03');
INSERT INTO order_item VALUES('o25','i02','e02');
INSERT INTO order_item VALUES('o25','i06','e02');
INSERT INTO order_item VALUES('o26','i02','e02');
INSERT INTO order_item VALUES('o27','i06','e02');
INSERT INTO order_item VALUES('o27','i02','e02');

/*** Maintenance_package ***/
INSERT INTO maintenance_package VALUES('mp01','v06','Basic Inspection',95,'Tire Rotation, Oil Change','3000');
INSERT INTO maintenance_package VALUES('mp02','v03','Minor Interval Services',105,'Oil Change, air filters','5000');
INSERT INTO maintenance_package VALUES('mp03','v01','Tire Rotation Balances',180,'Tire Rotation, Brakes','10000');

/*** Package_item ***/
INSERT INTO package_item VALUES('i01','mp01');
INSERT INTO package_item VALUES('i02','mp01');
INSERT INTO package_item VALUES('i02','mp02');
INSERT INTO package_item VALUES('i03','mp02');
INSERT INTO package_item VALUES('i01','mp03');
INSERT INTO package_item VALUES('i04','mp03');

```

<br><br>

## Views
1. Customer_v – for each customer, indicate his or her name as well as the customer type (prospect, steady or premier) as well as the number of years that customer has been with us.
```sql
CREATE VIEW Customer_v AS
(select firstname,lastname, 'Steady' as type,2016-year(dateregistered) AS yearwithus from person p 
inner join customer c on p.PERSONID = c.PERSONID
inner join steady_customer s 
on s.CUSTOMERID = c.CUSTOMERID)
UNION
(select firstname,lastname, 'Premier' as type,2016-year(dateregistered) AS yearwithus from person p 
inner join customer c on p.PERSONID = c.PERSONID
inner join premier_customer r 
on r.CUSTOMERID = c.CUSTOMERID)
UNION 
(select firstname,lastname, 'Prospective' as type,2016-year(dateregistered) AS yearwithus from person p 
inner join customer c on p.PERSONID = c.PERSONID
inner join prospective_customer d 
on d.CUSTOMERID = c.CUSTOMERID);

```
#### Output
| FIRSTNAME	| LASTNAME	| TYPE	| YEARWITHUS
| --- | --- | --- | --- |
| Bridgette	| Storm		| Prospective	| 0 |
| Chris	| Zemke	| Steady | 0 |
| Hank | Schrader	| Premier |	1 |
| Jane | Whip	|	Prospective	| 1 |
| John | Bridge	| Steady |	0 |
| Mike	|	Yin	| Prospective	| 1 |
| Sarah	|	Whethers	| Steady | 2 |
| Zack	|	Maldonado	| Premier |	0 |

<br>

2. Customer_addresses_v – for each customer, indicate whether they are an individual or a corporate account, and display all of the addresses that we are managing for that customer.
```sql
CREATE VIEW Customer_addresses_v AS
SELECT customer.customerid,customer.atype,address
FROM customer inner join address
on customer.customerid = address.customerid;
```
#### Output
| CUSTOMERID | ATYPE | ADDRESS |
| --- | --- | --- |
| c01	|	private	|	1234 Cantberry Way, CA 92244 |
| c02	|	private	|	415 Baronet, Mission Viejo, CA 92692 |
| c03	|	private	|	10 Roberts, Coto de Caza, CA 92604 |
| c04	|	corporation	| 8 Rancho Circle, Lake Forest, CA 92622 |
| c04	|	corporation	| 1 Tudor Way, Ladera Ranch, CA 92604 |
| c04	|	corporation	| 27702 The Way, Ocean Ranch, CA 92699 |
| c05	|	private	|	1456 Man Street, Porland, OR 92213 |
| c06	|	corporation	| 8496 Cambridge St. Baldwin Park, CA 91706 |
| c06	|	corporation	| 9524 Oak St. Laguna Niguel, CA 92677 |
| c07	|	private	|	8344 Heather St. San Francisco, CA 94109 |
| c08	|	corporation	| 9606 Branch Lane Tustin, CA 92780 |
| c08	|	corporation	| 844 Honey Creek St. Huntington Park, CA 90255 |
| c08	|	corporation	| 73 Myrtle Dr. Sacramento, CA 95823 |
| c08	|	corporation	| 9027 Bay St. Long Beach, CA 90813 |

<br>

3. Mechanic_mentor_v – reports all of the mentor/mentee relationships at Dave’s, sorted by the name of the mentor, then the name of the mentee.
```sql
CREATE VIEW Mechanic_mentor_v AS
 SELECT MTR.EMPLOYEEID AS Mentor_ID, pMTR.LASTNAME AS Mentor_LastName, 
  pMTR.FIRSTNAME AS Mentor_FirstName, MTE.EMPLOYEEID AS Mentee_ID, 
   pMTE.LASTNAME AS Mentee_LastName, pMTE.FIRSTNAME AS Mentee_FirstName, 
    MTHP.STARTDATE, MTHP.ENDDATE,  MTHP.SKILLMENTORED FROM 
     person pMTR INNER JOIN employee E ON pMTR.PERSONID = E.PERSONID 
      INNER JOIN mechanic MTR ON MTR.EMPLOYEEID = E.EMPLOYEEID 
       INNER JOIN (person pMTE INNER JOIN employee EE ON 
        pMTE.PERSONID = EE.PERSONID INNER JOIN mentorship 
         MTHP ON MTHP.MENTEEID = EE.EMPLOYEEID 
          INNER JOIN mechanic MTE ON MTHP.MENTEEID = 
           MTE.EMPLOYEEID) ON MTR.EMPLOYEEID = MTHP.EMPLOYEEID
            ORDER BY pMTR.LASTNAME, pMTE.LASTNAME;
```

#### Output 
| MENTOR_ID	| MENTOR_LASTNAME |	MENTOR_FIRSTNAME	| MENTEE_ID	| MENTEE_LASTNAME	| MENTEE_FIRSTNAME	| STARTDATE	| ENDDATE	| SKILLMENTORED |
| --- | --- | --- | --- | --- | --- | --- | --- | --- | 
| e05	| Hancock | Stewart	| e06	| Rayn	| Paul	| 2016-11-01	| 2016-12-28	| Air Filter |
| e04	| Johnson	| Jake	| e05	| Hancock | Stewart	| 2016-03-01	| 2016-06-28	| Brakes |
| e02	| Mukasa	| Winston	| e04	| Johnson	| Jake	| 2016-01-10	| 2016-03-01	| Hoist Operation |
| e02	| Mukasa	| Winston	| e06	| Rayn	| Paul	| 2016-09-03	| 2016-11-03	| Oil Change |
| e02	| Mukasa	| Winston	| e03	| Reigns	| Ryan	| 2015-06-05	| 2015-07-20	| Oil Change |
| e03	| Reigns | Ryan	| e02	| Mukasa | Winston	| 2016-01-01	| 2016-05-28	| Timing Belts |

<br>
4. Premier_profits_v – On a year by year basis, show the premier customer’s outlay versus what they would have been charged for the services which they received had they merely been steady customers.

```sql
CREATE VIEW Premier_profits_v AS
SELECT c.CUSTOMERID,firstname,lastname,(2017-year(c.DATEREGISTERED))*annualfee as outlay,sum(cost) as steadytotal
from order_item o 
inner join visit_order v
on v. VISITID = o.VISITID 
inner join maintenance_item m 
on m.ITEMID = o.ITEMID
inner join vehicle e
on e.VEHICLEID = v.VEHICLEID
inner join customer c
on c.CUSTOMERID = e.CUSTOMERID
inner join premier_customer r
on r.CUSTOMERID = c.CUSTOMERID
inner join person p
on p.PERSONID = c.PERSONID
group by c.CUSTOMERID, firstname,lastname,(2017-year(c.DATEREGISTERED))*annualfee;
```

#### Output
|  CUSTOMERID | FIRSTNAME | LASTNAME | OUTLAY | STEADYTOTAL |
| --- | --- | --- | --- | --- |
|  c03 | Hank | Schrader | 2000 | 1175 |
|  c06 | Zack | Maldonado | 850 | 1130 |

<br>
5. Prospective_resurrection_v – List all of the prospective customers who have had three or more contacts, and for whom the most recent contact was more than a year ago.  They might be ripe for another attempt.

```sql
CREATE VIEW Prospective_resurrection_v AS
 SELECT c.CUSTOMERID, p.FIRSTNAME, p.LASTNAME, COUNT(c.CUSTOMERID) AS 
  number_of_contacts FROM person p INNER JOIN customer c ON 
   p.PERSONID = c.PERSONID INNER JOIN prospective_customer pr ON 
    pr.CUSTOMERID = c.CUSTOMERID INNER JOIN contact_made cm ON 
     cm.CUSTOMERID = pr.CUSTOMERID WHERE 2016-YEAR(contactDate) >= 1 
      GROUP BY p.FIRSTNAME, p.LASTNAME, c.CUSTOMERID
       HAVING COUNT(c.CUSTOMERID) >= 3;
```

#### Output
| CUSTOMERID | FIRSTNAME | LASTNAME | NUMBER_OF_CONTACTS |
| --- | --- | --- | --- |
| c07 | Mike | Yin | 3 |

## Queries
1. List the customers.  For each customer, indicate which category he or she fall into, and his or her contact information.

```sql
(select firstname,lastname, 'Steady' as type,c.atype,address from person p 
inner join customer c on p.PERSONID = c.PERSONID
inner join steady_customer s 
on s.CUSTOMERID = c.CUSTOMERID
inner join (select address.* from address
inner join (
select max(address) as maxID from address group by customerid) maxID
on maxID.maxID = address.address) a
on a.customerid = c.customerid)
UNION
(select firstname,lastname, 'Premier' as type,c.atype,address from person p 
inner join customer c on p.PERSONID = c.PERSONID
inner join premier_customer r 
on r.CUSTOMERID = c.CUSTOMERID
inner join (select address.* from address
inner join (
select max(address) as maxID from address group by customerid) maxID
on maxID.maxID = address.address) a
on a.customerid = c.customerid)
UNION 
(select firstname,lastname, 'Prospective' as type,c.atype,address from person p 
inner join customer c on p.PERSONID = c.PERSONID
inner join prospective_customer d 
on d.CUSTOMERID = c.CUSTOMERID
inner join (select address.* from address
inner join (
select max(address) as maxID from address group by customerid) maxID
on maxID.maxID = address.address) a
on a.customerid = c.customerid);
```

#### Output

<br>
2. For each service visit, list the total cost to the customer for that visit.

```sql
select o.VISITID,c.CUSTOMERID, firstname,lastname,count(*) as items, sum(cost) as total
from order_item o 
inner join visit_order v 
on v. VISITID = o.VISITID 
inner join maintenance_item m 
on m.ITEMID = o.ITEMID
inner join vehicle e
on e.VEHICLEID = v.VEHICLEID
inner join customer c
on c.CUSTOMERID = e.CUSTOMERID
inner join person p
on p.PERSONID = c.PERSONID
group by o.VISITID,o.VISITID,c.CUSTOMERID, firstname,lastname
order by o.visitid asc;
```

#### Output

<br>
3. List the top three customers in terms of their net spending for the past two years, and the total that they have spent in that period.

```sql
SELECT c.CUSTOMERID,firstname,lastname, sum(cost) as total
from order_item o 
inner join (select * from visit_order v 
where v.VODATE between '2014-12-03' and '2016-12-03') v
on v. VISITID = o.VISITID 
inner join maintenance_item m 
on m.ITEMID = o.ITEMID
inner join vehicle e
on e.VEHICLEID = v.VEHICLEID
inner join customer c
on c.CUSTOMERID = e.CUSTOMERID
inner join person p
on p.PERSONID = c.PERSONID
group by c.CUSTOMERID, firstname,lastname
order by total desc
```

#### Output

<br>
4. Find all of the mechanics who have three or more skills.

```sql
SELECT firstName, lastName, COUNT(*) AS number_of_skills
from person NATURAL JOIN employee NATURAL JOIN mechanic_skill GROUP BY firstName, lastName HAVING count(*) > 2;
```

#### Output

<br>
5. Find all of the mechanics who have three or more skills in common.

```sql
select * from (select 'e02' as employeeid1, 'e03' as employeeid2, count(*) as commonskills from (select s.skillname,count(times) as times from 
(select skillname, count(skillname) as times from mechanic_skill
where employeeid in ('e02','e03')
group by skillname) s
where s.times = 2
group by s.skillname) a
UNION 
(select 'e02' as employeeid1, 'e04' as employeeid2, count(*) as commonskills from (select s.skillname,count(times) as times from 
(select skillname, count(skillname) as times from mechanic_skill
where employeeid in ('e03','e4')
group by skillname) s
where s.times = 2
group by s.skillname) a)
UNION 
(select 'e02' as employeeid1, 'e06' as employeeid2, count(*) as commonskills from (select s.skillname,count(times) as times from 
(select skillname, count(skillname) as times from mechanic_skill
where employeeid in ('e03','e06')
group by skillname) s
where s.times = 2
group by s.skillname) a)
UNION
(select 'e05' as employeeid1, 'e06' as employeeid2, count(*) as commonskills from (select s.skillname,count(times) as times from 
(select skillname, count(skillname) as times from mechanic_skill
where employeeid in ('e05','e06')
group by skillname) s
where s.times = 2
group by s.skillname) a)
UNION 
(select 'e04' as employeeid1, 'e06' as employeeid2, count(*) as commonskills from (select s.skillname,count(times) as times from 
(select skillname, count(skillname) as times from mechanic_skill
where employeeid in ('e04','e06')
group by skillname) s
where s.times = 2
group by s.skillname) a)) b 
where commonskills > 2;
```

#### Output

<br>
6. For each maintenance package, list the total cost of the maintenance package, as well as a list of all of the maintenance items within that package.

```sql
select m.PACKAGEID,packagedescription as maintenanceitems,sum(i.COST) as total
from package_item p
inner join maintenance_package m
on m.PACKAGEID = p.PACKAGEID
inner join maintenance_item i
on i.ITEMID = p.ITEMID
group by m.packageid,packagedescription;
```

#### Output

<br>
7. Find all of those mechanics who have one or more maintenance items that they lacked one or more of the necessary skills.

```sql
select m.employeeid,firstname,lastname,phonenumber from mechanic_skill m
inner join employee e
on e.EMPLOYEEID = m.EMPLOYEEID
inner join person p
on p.PERSONID = e.PERSONID
where m.SKILLNAME not in (select skillrequired from maintenance_item)
group by m.employeeid,firstname,lastname,phonenumber;
```

#### Output

<br>
8. List the customers, sorted by the number of loyalty points that they have, from largest to smallest.

```sql
SELECT firstName, lastName, loyaltyPoints FROM person 
NATURAL JOIN customer NATURAL JOIN steady_customer ORDER BY loyaltyPoints DESC;
```

#### Output

<br>
9. The premier customers and the difference between what they have paid in the past year, versus the services that they actually used during that same time.  List from the customers with the largest difference to the smallest.

```sql
SELECT c.CUSTOMERID,firstname,lastname,annualfee as actualpay,sum(cost) as shouldpay,annualfee-sum(cost) as difference
from order_item o 
inner join (select * from visit_order where VODATE between '2015-12-03' and '2016-12-03') v
on v. VISITID = o.VISITID 
inner join maintenance_item m 
on m.ITEMID = o.ITEMID
inner join vehicle e
on e.VEHICLEID = v.VEHICLEID
inner join customer c
on c.CUSTOMERID = e.CUSTOMERID
inner join premier_customer r
on r.CUSTOMERID = c.CUSTOMERID
inner join person p
on p.PERSONID = c.PERSONID
group by c.CUSTOMERID, firstname,lastname,annualfee
order by difference desc;
```

#### Output

<br>
10. Report on the steady customers based on the net profit that we have made from them over the past year, and the dollar amount of that profit, in order from the greatest to the least.

```sql
SELECT c.CUSTOMERID,firstname,lastname,sum(cost) as netprofit,sum(cost)*.25 as profit
from order_item o 
inner join (select * from visit_order where VODATE between '2015-12-03' and '2016-12-03') v
on v. VISITID = o.VISITID 
inner join maintenance_item m 
on m.ITEMID = o.ITEMID
inner join vehicle e
on e.VEHICLEID = v.VEHICLEID
inner join customer c
on c.CUSTOMERID = e.CUSTOMERID
inner join steady_customer s
on s.CUSTOMERID = c.CUSTOMERID
inner join person p
on p.PERSONID = c.PERSONID
group by c.CUSTOMERID, firstname,lastname
order by profit desc;
```

#### Output

<br>
11. List the three services that we have performed the most in the last year and how many times they were performed. 

```sql
select m.ITEMNAME as service,count(o.itemid) as timesperformed from (select * from visit_order v
inner join order_item o
on v.VISITID = o.VISITID where v.VODATE between '2015-12-03' and '2016-12-03') o
inner join maintenance_item m
on o.ITEMID = m.ITEMID
group by m.ITEMNAME
order by timesperformed desc
fetch next 3 row only;
** Another way to do the same thing in derby, not sure if it works in mysql **
select m.ITEMNAME as service,count(o.itemid) as timesperformed from visit_order v
inner join order_item o
on v.VISITID = o.VISITID 
inner join maintenance_item m
on o.ITEMID = m.ITEMID
where v.VODATE between '2015-12-03' and '2016-12-03'
group by m.ITEMNAME
order by timesperformed desc
limit 3;
```

#### Output

<br>
12. List the three services that have brought in the most money in the last year along with that amount of money.

```sql
select m.ITEMNAME as service,count(o.itemid) as timesperformed, sum(cost) as total from (select * from visit_order v
inner join order_item o
on v.VISITID = o.VISITID where v.VODATE between '2015-12-03' and '2016-12-03') o
inner join maintenance_item m
on o.ITEMID = m.ITEMID
group by m.ITEMNAME
order by timesperformed desc
limit 3;
```

#### Output

<br>
13. Find the mechanic who is mentoring the most other mechanics.  List the skills that the mechanic is passing along to the other mechanics.

```sql
select firstname,lastname,count(m.EMPLOYEEID) as numberofmentee,m.SKILLMENTORED from mentorship m
inner join employee e
on e.EMPLOYEEID = m.EMPLOYEEID
inner join person p
on p.PERSONID = e.PERSONID
group by firstname,lastname,m.SKILLMENTORED
order by numberofmentee desc
limit 2;
```

#### Output

<br>
14. Find the three skills that have the fewest mechanics who have those skills.

```sql
SELECT skillName, count(*) AS Skill_Occurance FROM person 
NATURAL JOIN employee NATURAL JOIN mechanic NATURAL JOIN mechanic_skill 
GROUP BY skillName 
ORDER BY count(*) OFFSET 0 ROWS 
limit 3;
```
#### Output

<br>
15. List the employees who are both service technicians as well as mechanics.

```sql
SELECT firstName, lastName, employeeId FROM person 
NATURAL JOIN employee NATURAL JOIN service_technician NATURAL JOIN mechanic;
```

#### Output
