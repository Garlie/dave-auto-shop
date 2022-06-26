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
