insert into Clean_And_Go.Supplier values ('1', 'Lowes', '2700 Rainier Ave South', 'Seattle', 'WA', '98382', '2064181234', 4523.80 ); 
insert into Clean_And_Go.Supplier values ('2', 'HomeDepot', '1256 156th Ave South', 'Bellevue', 'WA', '98008', '2067893456', 345.87); 
insert into Clean_And_Go.Supplier values ('3', 'HomeGoods', '176 148th Ave NE', 'Bellevue', 'WA', '98006', '2061234507', 0.00); 
insert into Clean_And_Go.Supplier values ('4', 'CleaingGoods', '1342 198th Ave NW', 'Redmond', 'WA', '98053', '2067840671', 167.8);
insert into Clean_And_Go.Supplier values ('5', 'Costco', '2800 Bellevue Way NE', 'Bellevue', 'WA', '98004', '2060910315', 0.00);
insert into Clean_And_Go.Supplier values ('6', 'Pro Supply USA', '14615 NE 91st ST', 'Redmond', 'WA', '98052', '2067666812', 1346.85 ); 
insert into Clean_And_Go.Supplier values ('7', 'Buckeye Cleaning Centers', '18902 14th PL S', 'Bellevue', 'WA', '98006', '2067340909', 3457.88); 
insert into Clean_And_Go.Supplier values ('8', 'Dollar Tree', '2209 Bel-Red Rd', 'Redmond', 'WA', '98052', '2050090901', 0.00); 
insert into Clean_And_Go.Supplier values ('9', 'Sarco Supply', '3902 S 56th ST', 'Tacoma', 'WA', '98409', '2064746780', 193.45);
insert into Clean_And_Go.Supplier values ('10', 'The Supply Source, Inc', '120 Country Line Rd', 'Bellevue', 'WA', '98008', '2067171582', 348.68);

insert into Clean_And_Go.Service values ('1', 'Coin Washer', 'Insert coins to use washer', 2, 1);
insert into Clean_And_Go.Service values ('2', 'dryer', 'Insert coins to use dryer', 2, 2);
insert into Clean_And_Go.Service values ('3', 'Drop-off Services', 'drop off your clothes at your front door', 15, 2);
insert into Clean_And_Go.Service values ('4', 'Dry Cleaning', 'Dry Clean your clothes', 20, 2);
insert into Clean_And_Go.Service values ('5', 'Coin washer and dryer', 'Insert coins to use washer and dryer', 3, 3);
insert into Clean_And_Go.Service values ('6', 'Dry cleaning and drop off', 'Dry clean your clothes and drop off', 30, 4);
insert into Clean_And_Go.Service values ('7', 'Coin washer/dryer and drop off', 'Insert coins to use washer/dryer and drop off', 12, 3);

insert into Clean_And_Go.Cleaning_supplies values ('Soap', 'Add to washer to clean clothes', 30, 10, '6', '1', 12.5);
insert into Clean_And_Go.Cleaning_supplies values ('Dry Sheet', 'Use in the dryer', 45, 10, '5', '2', 6.8);
insert into Clean_And_Go.Cleaning_supplies values ('Softener', 'To make the clothes soft', 38, 6, '9', '4', 10.25);
insert into Clean_And_Go.Cleaning_supplies values ('Dry Clean Starter kit', 'for dry clean', 32, 8, '10', '4', 20.5);
insert into Clean_And_Go.Cleaning_supplies values ('Dry Clean refill kit', 'for dry clean', 20, 5, '10', '4', 25.35);
insert into Clean_And_Go.Cleaning_supplies values ('Towel', 'All purpose', 100, 30, '4', '4', 3.4);
insert into Clean_And_Go.Cleaning_supplies values ('Sponges', 'for dry clean', 30, 10, '5', '4', 2.2);

insert into Clean_And_Go.Customer 
values ('1', 'Lucy Grace', '3042 Nash Street', 'Bellevue', 'WA','98008', 'lucygrace123@gmail.com', '2062210908', '3820 1393 3849 3920', 0.00);
insert into Clean_And_Go.Customer 
values ('2', 'David Taing', '7832 124th NE', 'Redmond', 'WA','98052', 'davidtaing345@gmail.com', '4254478291', '2123 3431 4539 9383', 145.2);
insert into Clean_And_Go.Customer 
values ('3', 'Claudine J Cook', '4771 Buffalo Creek Road', 'Bellevue', 'WA','98004', 'claudinecook789@gmail.com', '4257893331', '8392 3937 2383 3443', 45.78);
insert into Clean_And_Go.Customer 
values ('4', 'Kyle Arias', '2067 Big Indian', 'Bellevue', 'WA','98004', 'kylearias2310@gmail.com', '4256678990', '2537 2223 8919 2333', 66.8);
insert into Clean_And_Go.Customer 
values ('5', 'Kenneth Thompson', '4595 Arron Smith Drive', 'Redmond', 'WA','98052', 'kenneth.thompson456@gmail.com', '4256634521', '2292 9929 8883 6739', 89.6);
insert into Clean_And_Go.Customer 
values ('6', 'Kristen J Lussier', '3077 Jerome Avenue', 'Kirkland', 'WA','98033', 'kristen.lussier667@gmail.com', '2067789023', '4143 5663 4563 9020', 85.2);
insert into Clean_And_Go.Customer 
values ('7', 'Alfred D Mathieu', '3231 Filbert Street', 'Bellevue', 'WA','98006', 'alfredmathieu345@gmail.com', '4253212345', '2323 3451 8939 3919', 0.00);
insert into Clean_And_Go.Customer 
values ('8', 'Philip Z Kennedy', '3590 James Street', 'Bellevue', 'WA','98007', 'philipkennedy2901@gmail.com', '4253453789', '8901 3012 3904 4458', 25.6);
insert into Clean_And_Go.Customer 
values ('9', 'Jason S Frye', '1846 Pinnickinick Street', 'Redmond', 'WA','98052', 'jasonfrye290@gmail.com', '2068904401', '4143 3678 2901 3490', 11.68);
insert into Clean_And_Go.Customer 
values ('10', 'Barbara R Golden', '305 Johnson Street', 'Bellevue', 'WA','98004', 'bardaragolden9009@gmail.com', '4256090121', '3890 0021 0384 0310', 0.00);


insert into Clean_And_Go.Employee 
values ('1', 'Tony Stark', '18900 sunset Bellevue WA 98009', 'male', '2021-04-25', 'owner', 20, 'Whenever he pleases');
insert into Clean_And_Go.Employee 
values ('2', 'Gertrude J Savage', '2466 Oak Avenue, Bellevue WA 98008', 'Female', '2021-01-21', 'Worker', 18, 'Monday to Friday, 8am to 16pm');
insert into Clean_And_Go.Employee 
values ('3', 'Richard Mortimer', '4295 Melody Lane, Bellevue WA 98006', 'Male', '2021-01-25', 'Worker', 18, 'Saturday: 9am to 17pm, Sunday: 10am to 18pm, Monday to Wednesday: 12pm to 8pm');
insert into Clean_And_Go.Employee 
values ('4', 'Anna Duncan', '556 Timberbrook Lane, Redmond WA 98053', 'Female', '2021-02-05', 'Worker', 19, 'Thursday to Sunday: 8am to 16pm');
insert into Clean_And_Go.Employee 
values ('5', 'Elizabeth Wetzel', '3459 Beechwood Drive, Kirkland WA 98033', 'Female', '2021-02-18', 'Worker', 17, 'Monday to Sunday: 16pm to 20pm');
insert into Clean_And_Go.Employee 
values ('6', 'Barry Cooper', '	760 Hillview Drive, Redmond 98052', 'Male', '2021-02-22', 'Worker', 19, 'Wednesday to Sunday: 12pm to 20pm');
insert into Clean_And_Go.Employee 
values ('7', 'Jason C Glass', '23867 Hillview Drive, Bellevue WA 98008', 'Male', '2021-03-08', 'Worker', 18, 'Thursday to Tuesday: 12pm to 20pm');
insert into Clean_And_Go.Employee 
values ('8', 'peter parker', '2622 end st renton WA 98059', 'male', '2021-03-11', 'Worker', 18, 'Monday to Friday, 8am to 16pm');
insert into Clean_And_Go.Employee 
values ('9', 'steven strange', '1292 freemont bellevue WA 98009', 'male', '2021-04-21', 'Worker', 18, 'Monday to Friday, 8am to 16pm');
insert into Clean_And_Go.Employee 
values ('10', 'Steve Rogers', '18400 first issquah WA 98027', 'male', '2021-05-01', 'manager', 25, 'Monday to Friday, 8am to 16pm');


insert into Clean_And_Go.Equipment 
values ('1', 'TCL', '2021-01-04', 1200.62, 'Dryer',"first monday of second quarter", '1', '2', 43.44);
insert into Clean_And_Go.Equipment 
values ('2', 'Amana', '2021-01-04', 1100.62, 'Dryer',"first monday of second quarter", '2', '2', 43.44);
insert into Clean_And_Go.Equipment 
values ('3', 'GE', '2021-01-21', 1500.12, 'washer',"second monday of second quarter", '3', '1', 92.43);
insert into Clean_And_Go.Equipment 
values ('4', 'LG', '2021-02-20', 1400.32, 'washer',"second monday of second quarter", '4', '1', 92.43);
insert into Clean_And_Go.Equipment 
values ('5', 'Kenmore', '2021-03-15', 2000.62, 'dry cleaner',"first friday of second quarter", '5', '4', 98.44);
insert into Clean_And_Go.Equipment 
values ('6', 'Samsung', '2021-04-05', 1992.12, 'dry cleaner',"first friday of second quarter", '6', '7', 98.44);
insert into Clean_And_Go.Equipment 
values ('7', 'Planiform', '2021-04-19', 3402.10, 'rack machine',"first monday of second quarter", '7', '6', 103.44);

insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('1', '2021-02-01',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('2', '2021-02-01',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('1', '2021-02-08',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('2', '2021-02-08',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('1', '2021-02-15',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('2', '2021-02-15',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('1', '2021-02-22',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('2', '2021-02-22',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('1', '2021-03-01',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('2', '2021-03-08',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('1', '2021-03-15',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('2', '2021-03-15',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('3', '2021-03-16',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('4', '2021-03-16',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('1', '2021-03-22',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('2', '2021-03-22',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('3', '2021-03-23',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('4', '2021-03-23',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('1', '2021-04-01',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('2', '2021-04-01',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('3', '2021-04-02',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('4', '2021-04-02',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('1', '2021-04-08',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('2', '2021-04-08',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('3', '2021-04-09',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('4', '2021-04-09',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('1', '2021-04-15',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('2', '2021-04-15',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('3', '2021-04-16',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('4', '2021-04-16',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('1', '2021-04-22',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('2', '2021-04-22',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('3', '2021-04-23',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('4', '2021-04-23',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('1', '2021-05-01',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('2', '2021-05-01',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('3', '2021-05-02',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('4', '2021-05-02',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('5', '2021-05-03',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('6', '2021-05-03',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('7', '2021-05-04',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('1', '2021-05-08',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('2', '2021-05-08',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('3', '2021-05-09',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('4', '2021-05-09',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('5', '2021-05-10',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('6', '2021-05-10',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('7', '2021-05-11',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('1', '2021-05-15',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('2', '2021-05-15',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('3', '2021-05-16',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('4', '2021-05-16',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('5', '2021-05-17',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('6', '2021-05-17',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('7', '2021-05-18',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('1', '2021-05-22',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('2', '2021-05-22',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('3', '2021-05-23',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('4', '2021-05-23',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('5', '2021-05-24',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('6', '2021-05-25',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('7', '2021-05-26',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('1', '2021-06-01',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('2', '2021-06-01',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('3', '2021-06-02',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('4', '2021-06-02',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('5', '2021-06-03',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('6', '2021-06-03',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('7', '2021-06-04',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('1', '2021-06-08',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('2', '2021-06-08',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('3', '2021-06-09',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('4', '2021-06-09',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('5', '2021-06-10',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('6', '2021-06-10',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('7', '2021-06-11',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('1', '2021-06-15',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('2', '2021-06-15',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('3', '2021-06-16',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('4', '2021-06-16',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('5', '2021-06-17',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('6', '2021-06-17',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('7', '2021-06-18',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('1', '2021-06-22',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('2', '2021-06-22',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('3', '2021-06-23',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('4', '2021-06-23',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('5', '2021-06-24',2021, 2, '8am to 10am');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('6', '2021-06-25',2021, 2, '10am to 12pm');
insert into Clean_And_Go.equipment_maintenence_Schedule 
values ('7', '2021-06-26',2021, 2, '8am to 10am');





insert into Clean_And_Go.equipment_Schedule values ('2021-01-04', 1, 2021, 1,  'used for cleaning mikes house');
insert into Clean_And_Go.equipment_Schedule values ('2021-01-05', 2, 2021, 2,  'used for cleaning charles garage');
insert into Clean_And_Go.equipment_Schedule values ('2021-02-01', 3, 2021, 3,  'used for cleaning adams store');
insert into Clean_And_Go.equipment_Schedule values ('2021-02-02', 4, 2021, 4,  'used for cleaning matts house');
insert into Clean_And_Go.equipment_Schedule values ('2021-03-01', 5, 2021, 5,  'used for cleaning lesleys business');
insert into Clean_And_Go.equipment_Schedule values ('2021-03-02', 6, 2021, 6,  'used for cleaning cocos mansion');
insert into Clean_And_Go.equipment_Schedule values ('2021-04-01', 7, 2021, 7,  'used for cleaning washer dryer');
insert into Clean_And_Go.equipment_Schedule values ('2021-04-02', 1, 2021, 8,  'used for cleaning washer');
insert into Clean_And_Go.equipment_Schedule values ('2021-05-01', 2, 2021, 1,  'used for cleaning dryer');
insert into Clean_And_Go.equipment_Schedule values ('2021-06-01', 3, 2021, 2,  'used for cleaning mikes garage');
insert into Clean_And_Go.equipment_Schedule values ('2021-06-02', 4, 2021, 3,  'used for cleaning joshs house');
insert into Clean_And_Go.equipment_Schedule values ('2021-07-01', 5, 2021, 4,  'used for cleaning matts cloths');
insert into Clean_And_Go.equipment_Schedule values ('2021-07-02', 6, 2021, 5,  'used for cleaning alexs socks');
insert into Clean_And_Go.equipment_Schedule values ('2021-08-03', 7, 2021, 6,  'used for cleaning corys blankets');
insert into Clean_And_Go.equipment_Schedule values ('2021-08-04', 1, 2021, 7,  'used for cleaning codys pants');
insert into Clean_And_Go.equipment_Schedule values ('2021-09-05', 2, 2021, 8,  'used for cleaning cocos mansion');
insert into Clean_And_Go.equipment_Schedule values ('2021-09-06', 3, 2021, 1,  'used for cleaning mikes house');
insert into Clean_And_Go.equipment_Schedule values ('2021-10-07', 4, 2021, 2,  'used for cleaning matts house');
insert into Clean_And_Go.equipment_Schedule values ('2021-10-08', 5, 2021, 3,  'used for cleaning the garage');
insert into Clean_And_Go.equipment_Schedule values ('2021-11-09', 6, 2021, 4,  'used for cleaning the patio');
insert into Clean_And_Go.equipment_Schedule values ('2021-11-10', 7, 2021, 5,  'used for cleaning joshes garage');
insert into Clean_And_Go.equipment_Schedule values ('2021-12-11', 1, 2021, 6,  'used for cleaning after mays party');
insert into Clean_And_Go.equipment_Schedule values ('2021-12-12', 2, 2021, 7,  'used for cleaning joes house');
insert into Clean_And_Go.equipment_Schedule values ('2021-01-13', 3, 2021, 8,  'used for cleaning gabes place');
insert into Clean_And_Go.equipment_Schedule values ('2021-01-14', 4, 2021, 1,  'used for cleaning matts diner');
insert into Clean_And_Go.equipment_Schedule values ('2021-02-15', 5, 2021, 2,  'used for cleaning dudes house');
insert into Clean_And_Go.equipment_Schedule values ('2021-02-16', 6, 2021, 3,  'used for cleaning guys place');
insert into Clean_And_Go.equipment_Schedule values ('2021-03-17', 7, 2021, 4,  'used for cleaning buddys garage');
insert into Clean_And_Go.equipment_Schedule values ('2021-03-18', 1, 2021, 5,  'used for cleaning Fannie Garrett place');
insert into Clean_And_Go.equipment_Schedule values ('2021-04-19', 2, 2021, 6,  'used for cleaning Hattie Ellis cloths');
insert into Clean_And_Go.equipment_Schedule values ('2021-04-20', 3, 2021, 7,  'used for cleaning Orlando Kelley diner');
insert into Clean_And_Go.equipment_Schedule values ('2021-05-21', 4, 2021, 8,  'used for cleaning Billie Bell socks');
insert into Clean_And_Go.equipment_Schedule values ('2021-05-22', 5, 2021, 1,  'used for cleaning Cameron Howard pants');
insert into Clean_And_Go.equipment_Schedule values ('2021-06-23', 6, 2021, 2,  'used for cleaning Omar Harmon party');
insert into Clean_And_Go.equipment_Schedule values ('2021-06-24', 7, 2021, 3,  'used for cleaning Tim Love hatt');
insert into Clean_And_Go.equipment_Schedule values ('2021-07-25', 1, 2021, 4,  'used for cleaning denise dinner party');
insert into Clean_And_Go.equipment_Schedule values ('2021-07-26', 2, 2021, 5,  'used for cleaning hubert patio');
insert into Clean_And_Go.equipment_Schedule values ('2021-08-27', 3, 2021, 6,  'used for cleaning curtis backyard');
insert into Clean_And_Go.equipment_Schedule values ('2021-08-28', 4, 2021, 7,  'used for cleaning alexander garage');
insert into Clean_And_Go.equipment_Schedule values ('2021-09-01', 5, 2021, 8,  'used for cleaning anna house');
insert into Clean_And_Go.equipment_Schedule values ('2021-09-02', 6, 2021, 1,  'used for cleaning ora dinner');
insert into Clean_And_Go.equipment_Schedule values ('2021-10-03', 7, 2021, 2,  'used for cleaning michelle store');
insert into Clean_And_Go.equipment_Schedule values ('2021-10-04', 1, 2021, 3,  'used for cleaning sully bussiness');
insert into Clean_And_Go.equipment_Schedule values ('2021-11-05', 2, 2021, 4,  'used for cleaning stanly place');
insert into Clean_And_Go.equipment_Schedule values ('2021-11-06', 3, 2021, 5,  'used for cleaning celia garage');
insert into Clean_And_Go.equipment_Schedule values ('2021-12-07', 4, 2021, 6,  'used for cleaning stones bathroom');
insert into Clean_And_Go.equipment_Schedule values ('2021-12-08', 5, 2021, 7,  'used for cleaning cynthia garage');
insert into Clean_And_Go.equipment_Schedule values ('2021-01-09', 6, 2021, 8,  'used for cleaning ella mansion');
insert into Clean_And_Go.equipment_Schedule values ('2021-01-10', 7, 2021, 1,  'used for cleaning orlando store');
insert into Clean_And_Go.equipment_Schedule values ('2021-02-11', 1, 2021, 2,  'used for cleaning angi bodega');


insert into Clean_And_Go.employee_schedule 
values ('2021-11-23', '1', 2021, 8, "9am to 17pm");
insert into Clean_And_Go.employee_schedule 
values ('2021-11-24', '1', 2021, 8, "9am to 17pm");
insert into Clean_And_Go.employee_schedule 
values ('2021-11-25', '1', 2021, 8, "9am to 17pm");
insert into Clean_And_Go.employee_schedule 
values ('2021-11-26', '1', 2021, 8, "9am to 17pm");
insert into Clean_And_Go.employee_schedule 
values ('2021-11-27', '1', 2021, 8, "9am to 17pm");
insert into Clean_And_Go.employee_schedule 
values ('2021-11-28', '1', 2021, 8, "9am to 17pm");

insert into Clean_And_Go.employee_schedule 
values ('2021-11-24', '2', 2021, 10, "8am to 18pm");
insert into Clean_And_Go.employee_schedule 
values ('2021-11-25', '2', 2021, 6, "8am to 14pm");
insert into Clean_And_Go.employee_schedule 
values ('2021-11-26', '2', 2021, 6, "10am to 16pm");
insert into Clean_And_Go.employee_schedule 
values ('2021-11-27', '2', 2021, 10, "8am to 18pm");

insert into Clean_And_Go.employee_schedule 
values ('2021-11-24', '3', 2021, 9, "10am to 19pm");
insert into Clean_And_Go.employee_schedule 
values ('2021-11-25', '3', 2021, 6, "10am to 16pm");
insert into Clean_And_Go.employee_schedule 
values ('2021-11-26', '3', 2021, 9, "10am to 19pm");
insert into Clean_And_Go.employee_schedule 
values ('2021-11-27', '3', 2021, 6, "10am to 16pm");
insert into Clean_And_Go.employee_schedule 
values ('2021-11-28', '3', 2021, 5, "10am to 15pm");

insert into Clean_And_Go.employee_schedule 
values ('2021-11-23', '4', 2021, 6, "14pm to 20pm");
insert into Clean_And_Go.employee_schedule 
values ('2021-11-24', '4', 2021, 6, "14pm to 20pm");
insert into Clean_And_Go.employee_schedule 
values ('2021-11-25', '4', 2021, 6, "14pm to 20pm");
insert into Clean_And_Go.employee_schedule 
values ('2021-11-26', '4', 2021, 6, "14pm to 20pm");
insert into Clean_And_Go.employee_schedule 
values ('2021-11-27', '4', 2021, 6, "14pm to 20pm");
insert into Clean_And_Go.employee_schedule 
values ('2021-11-28', '4', 2021, 6, "14pm to 20pm");


insert into Clean_And_Go.employee_schedule 
values ('2021-11-23', '5', 2021, 8, "12pm to 20pm");
insert into Clean_And_Go.employee_schedule 
values ('2021-11-24', '5', 2021, 8, "12pm to 20pm");
insert into Clean_And_Go.employee_schedule 
values ('2021-11-25', '5', 2021, 8, "12pm to 20pm");
insert into Clean_And_Go.employee_schedule 
values ('2021-11-26', '5', 2021, 8, "12pm to 20pm");
insert into Clean_And_Go.employee_schedule 
values ('2021-11-27', '5', 2021, 8, "12pm to 20pm");
insert into Clean_And_Go.employee_schedule 
values ('2021-11-28', '5', 2021, 8, "12pm to 20pm");

insert into Clean_And_Go.employee_schedule 
values ('2021-11-28', '6', 2021, 5, "12pm to 17pm");
insert into Clean_And_Go.employee_schedule 
values ('2021-11-29', '7', 2021, 8, "12pm to 20pm");
insert into Clean_And_Go.employee_schedule 
values ('2021-11-23', '8', 2021, 8, "10am to 18pm");
insert into Clean_And_Go.employee_schedule 
values ('2021-11-24', '9', 2021, 8, "12pm to 20pm");
insert into Clean_And_Go.employee_schedule 
values ('2021-11-25', '10', 2021, 8, "10am to 18pm");

insert into Clean_And_Go.Customer_Service 
values ('1', '1', '9', '5-Star', '2021-02-01', 108.36, 'Dry cleaned a bunch of clothes for customer');
insert into Clean_And_Go.Customer_Service 
values ('2', '2', '8', '4-Star', '2021-02-01', 250.46, 'Dry cleaned a bunch of clothes for customer');
insert into Clean_And_Go.Customer_Service 
values ('3', '3', '7', '3-Star', '2021-03-01', 150.88, 'Dropped off clothes to customer');
insert into Clean_And_Go.Customer_Service 
values ('4', '4', '6', '5-Star', '2021-04-01', 90.31, 'Dry cleaned a bunch of clothes for customer');
insert into Clean_And_Go.Customer_Service
values ('5', '5', '5', '5-Star', '2021-05-01', 210.56, 'Dry cleaned a bunch of clothes and dropped off them to customer');
insert into Clean_And_Go.Customer_Service 
values ('6', '6', '4', '5-Star', '2021-06-01', 145.45, 'Dry cleaned a bunch of clothes');
insert into Clean_And_Go.Customer_Service 
values ('7', '7', '3', '5-Star', '2021-07-01', 160.39, 'Dry cleaned a bunch of clothes');

insert into clean_and_go.Expense values (1, 'Cleaning Supplies');
insert into clean_and_go.Expense values (2, 'Purchasing Equipment');
insert into clean_and_go.Expense values (3, 'Salary');
insert into clean_and_go.Expense values (4, 'Rent');
insert into clean_and_go.Expense values (5, 'Equipment maintenence');
insert into clean_and_go.Expense values (6, 'Utility');

insert into Clean_And_Go.Transaction 
values('1','1', 'soap', null , '2021-01-03', 10, '2021-02-01','Use soap for washing machines', '2021-01-09', 141.5, 1);
insert into Clean_And_Go.Transaction 
values('2', '2', null, '1', '2021-01-04', 1, '2021-02-04', 'client needs to dry cloths', '2021-01-11', 1320.56, 2);
insert into Clean_And_Go.Transaction 
values('3', '2', null, '2', '2021-01-04', 1, '2021-02-04', 'client needs to dry cloths', '2021-01-11', 1210.56, 2);
insert into Clean_And_Go.Transaction 
values('4', '3', null, '3', '2021-01-21', 1, '2021-02-21', 'client needs to wash cloths', '2021-02-05', 1650.13, 2);
insert into Clean_And_Go.Transaction 
values('5', '2', 'dry sheet', NULL, '2021-02-01', 20, '2021-03-01', 'client needs to dry cloths', '2021-02-09', 75.56, 1);
insert into Clean_And_Go.Transaction 
values('6', null, null, null, '2021-02-01', null, null, 'Salary Expense', null, 1890.34, 3);
insert into Clean_And_Go.Transaction 
values('8', null, null, null, '2021-02-01', null, null, 'Salary Expense', null, 1192.58, 3);
insert into Clean_And_Go.Transaction 
values('9', null, null, null, '2021-02-01', null, '2021-02-10', 'Rent Expense', null, 1200, 4);
insert into Clean_And_Go.Transaction 
values('10', null, null, null, '2021-02-01', null, '2021-02-10', 'Utility Expense', null, 240.56, 6);
insert into Clean_And_Go.Transaction 
values('32', null, null, null, '2021-02-01', null, null, 'Equipment maintenence expense', null, 86.88, 5);
insert into Clean_And_Go.Transaction 
values('33', null, null, null, '2021-02-08', null, null, 'Equipment maintenence expense', null, 86.88, 5);
insert into Clean_And_Go.Transaction 
values('34', null, null, null, '2021-02-15', null, null, 'Equipment maintenence expense', null, 86.88, 5);
insert into Clean_And_Go.Transaction 
values('11', '3', null, '4', '2021-02-20', 1, '2021-03-20', 'client needs to wash cloths', '2021-02-28', 1540.35, 5);
insert into Clean_And_Go.Transaction 
values('35', null, null, null, '2021-02-22', null, null, 'Equipment maintenence expense', null, 86.88, 5);
insert into Clean_And_Go.Transaction 
values('36', '4','dry clean starter kit', NULL, '2021-02-23', 5, '2021-03-23', 'client needs to dry cloths', '2021-02-26', 112.75, 1);
insert into Clean_And_Go.Transaction 
values('37', '5', 'dry clean refill kit', NULL, '2021-02-25', 3, '2021-03-25', 'client needs to dry cloths', '2021-02-26', 77.05, 1);
insert into Clean_And_Go.Transaction 
values('38', null, null, null, '2021-03-01', null, null, 'Salary Expense', null, 1745.28,3);
insert into Clean_And_Go.Transaction 
values('39', null, null, null, '2021-03-01', null, null, 'Salary Expense', null, 1892.58, 3);
insert into Clean_And_Go.Transaction 
values('40', null, null, null, '2021-03-01', null, null, 'Salary Expense', null, 1323.78, 3);
insert into Clean_And_Go.Transaction 
values('41', null, null, null, '2021-03-01', null, '2021-02-10', 'Rent Expense', null, 1200, 4);
insert into Clean_And_Go.Transaction 
values('42', null, null, null, '2021-03-01', null, '2021-02-10', 'Utility Expense', null, 260.56, 5);
insert into Clean_And_Go.Transaction 
values('43', null, null, null, '2021-03-01', null, null, 'Equipment maintenence expense', null, 86.88, 5);
insert into Clean_And_Go.Transaction 
values('44', null, null, null, '2021-03-08', null, null, 'Equipment maintenence expense', null, 86.88, 5);
insert into Clean_And_Go.Transaction 
values('45', '4', null, '5', '2021-03-15', 1, '2021-04-15', 'dry cleaner', '2021-03-25', 2200.68, 2);
insert into Clean_And_Go.Transaction 
values('46', null, null, null, '2021-03-15', null, null, 'Equipment maintenence expense', null, 86.88, 5);
insert into Clean_And_Go.Transaction 
values('47', null, null, null, '2021-03-16', null, null, 'Equipment maintenence expense', null, 184.86, 5);
insert into Clean_And_Go.Transaction 
values('48', '3', 'softener', NULL, '2021-03-21', 20, '2021-04-21', 'client needs to softener for their clothes', '2021-03-23', 225.5,1);
insert into Clean_And_Go.Transaction 
values('49', '5', 'dry clean starter kit', NULL, '2021-03-21', 5, '2021-4-21', 'client needs to softener for their clothes', '2021-02-23', 112.75,1);
insert into Clean_And_Go.Transaction 
values('50', '6', 'towel', NULL, '2021-03-21', 6, '2021-04-21', 'client needs to softener for their clothes', '2021-02-23', 22.44, 1);
insert into Clean_And_Go.Transaction 
values('51', '4', 'sponges', NULL, '2021-03-21', 10, '2021-04-21', 'client needs to softener for their clothes', '2021-02-23', 24.2, 1);
insert into Clean_And_Go.Transaction 
values('52', null, null, null, '2021-03-22', null, null, 'Equipment maintenence expense', null, 86.88, 5);
insert into Clean_And_Go.Transaction 
values('53', null, null, null, '2021-03-23', null, null, 'Equipment maintenence expense', null, 184.86, 5);
insert into Clean_And_Go.Transaction 
values('54', '2', 'dry sheet', NULL, '2021-03-01', 20, '2021-04-01', 'client needs to dry cloths', '2021-03-09', 75.56,1);
insert into Clean_And_Go.Transaction 
values('55','1', 'soap', null , '2021-03-03', 10, '2021-04-03','Use soap for washing machines', '2021-03-09', 141.5, 1);
insert into Clean_And_Go.Transaction 
values('56','1', 'soap', null , '2021-03-03', 10, '2021-04-03','Use soap for washing machines', '2021-03-09', 141.5,1);
insert into Clean_And_Go.Transaction 
values('57', '3', 'softener', NULL, '2021-03-21', 20, '2021-04-21', 'client needs to softener for their clothes', '2021-03-23', 225.5,1);
insert into Clean_And_Go.Transaction 
values('58', '5', 'dry clean starter kit', NULL, '2021-03-21', 5, '2021-4-21', 'client needs to softener for their clothes', '2021-03-23', 112.75, 1);
insert into Clean_And_Go.Transaction 
values('59', '6', 'towel', NULL, '2021-03-21', 6, '2021-04-21', 'client needs to softener for their clothes', '2021-03-23', 22.44, 1);
insert into Clean_And_Go.Transaction 
values('60', '4', 'sponges', NULL, '2021-03-21', 10, '2021-04-21', 'client needs to softener for their clothes', '2021-03-23', 24.2,1);
insert into Clean_And_Go.Transaction 
values('61', '5', 'dry clean refill kit', NULL, '2021-03-25', 3, '2021-03-25', 'client needs to dry cloths', '2021-03-26', 77.05, 1);
insert into Clean_And_Go.Transaction 
values('62', null, null, null, '2021-04-01', null, null, 'Salary Expense', null, 1734.28, 3);
insert into Clean_And_Go.Transaction 
values('63', null, null, null, '2021-04-01', null, null, 'Salary Expense', null, 1823.58, 3);
insert into Clean_And_Go.Transaction 
values('64', null, null, null, '2021-04-01', null, null, 'Salary Expense', null, 1923.78, 3);
insert into Clean_And_Go.Transaction 
values('65', null, null, null, '2021-04-01', null, '2021-04-10', 'Rent Expense', null, 1200, 4);
insert into Clean_And_Go.Transaction 
values('66', null, null, null, '2021-04-01', null, '2021-04-10', 'Utility Expense', null, 223.56,6);
insert into Clean_And_Go.Transaction 
values('67', null, null, null, '2021-04-01', null, null, 'Equipment maintenence expense', null, 86.88, 5);
insert into Clean_And_Go.Transaction 
values('68', null, null, null, '2021-04-02', null, null, 'Equipment maintenence expense', null, 184.86, 5);
insert into Clean_And_Go.Transaction 
values('69', '3', null, '6', '2021-04-05', 1, '2021-05-05', 'client needs to wash cloths', '2021-04-28', 2191.33, 2);
insert into Clean_And_Go.Transaction 
values('70', null, null, null, '2021-04-08', null, null, 'Equipment maintenence expense', null, 86.88, 5);
insert into Clean_And_Go.Transaction 
values('71', null, null, null, '2021-04-09', null, null, 'Equipment maintenence expense', null, 184.86,5);
insert into Clean_And_Go.Transaction 
values('72', null, null, null, '2021-04-15', null, null, 'Equipment maintenence expense', null, 86.88, 5);
insert into Clean_And_Go.Transaction 
values('73', null, null, null, '2021-04-16', null, null, 'Equipment maintenence expense', null, 184.86,5);
insert into Clean_And_Go.Transaction 
values('74', '5', null, '7', '2021-04-19', 1, '2021-05-19', 'client needs to wash cloths', '2021-04-28', 3742.42, 2);
insert into Clean_And_Go.Transaction 
values('75', null, null, null, '2021-04-22', null, null, 'Equipment maintenence expense', null, 86.88, 5);
insert into Clean_And_Go.Transaction 
values('76', null, null, null, '2021-04-23', null, null, 'Equipment maintenence expense', null, 184.86, 5);
insert into Clean_And_Go.Transaction 
values('77', '2', 'dry sheet', NULL, '2021-04-01', 20, '2021-05-01', 'client needs to dry cloths', '2021-04-09', 75.56, 1);
insert into Clean_And_Go.Transaction 
values('78','1', 'soap', null , '2021-04-03', 10, '2021-05-03','Use soap for washing machines', '2021-04-09', 141.5, 1);
insert into Clean_And_Go.Transaction 
values('79','1', 'soap', null , '2021-04-03', 10, '2021-05-03','Use soap for washing machines', '2021-04-09', 141.5, 1);
insert into Clean_And_Go.Transaction 
values('80', '3', 'softener', NULL, '2021-04-21', 20, '2021-04-21', 'client needs to softener for their clothes', '2021-04-23', 225.5, 1);
insert into Clean_And_Go.Transaction 
values('81', '5', 'dry clean starter kit', NULL, '2021-04-21', 5, '2021-04-21', 'client needs to softener for their clothes', '2021-04-23', 112.75, 1);
insert into Clean_And_Go.Transaction 
values('82', '6', 'towel', NULL, '2021-04-21', 6, '2021-04-21', 'client needs to softener for their clothes', '2021-04-23', 22.44, 1);
insert into Clean_And_Go.Transaction 
values('83', '4', 'sponges', NULL, '2021-04-21', 10, '2021-04-21', 'client needs to softener for their clothes', '2021-04-23', 24.2, 1);
insert into Clean_And_Go.Transaction 
values('84', '5', 'dry clean refill kit', NULL, '2021-04-25', 3, '2021-04-25', 'client needs to dry cloths', '2021-04-26', 77.05, 1);
insert into Clean_And_Go.Transaction 
values('85', null, null, null, '2021-05-01', null, null, 'Salary Expense', null, 1734.28, 3);
insert into Clean_And_Go.Transaction 
values('86', null, null, null, '2021-05-01', null, null, 'Salary Expense', null, 1823.58, 3);
insert into Clean_And_Go.Transaction 
values('87', null, null, null, '2021-05-01', null, null, 'Salary Expense', null, 1923.78,3);
insert into Clean_And_Go.Transaction 
values('89', null, null, null, '2021-05-01', null, '2021-05-10', 'Utility Expense', null, 223.56, 6);
insert into Clean_And_Go.Transaction 
values('90', null, null, null, '2021-05-01', null, '2021-05-10', 'Rent Expense', null, 1200, 4);
insert into Clean_And_Go.Transaction 
values('92', null, null, null, '2021-05-01', null, null, 'Equipment maintenence expense', null, 86.88, 5);
insert into Clean_And_Go.Transaction 
values('93', null, null, null, '2021-05-02', null, null, 'Equipment maintenence expense', null, 184.86, 5);
insert into Clean_And_Go.Transaction 
values('94', null, null, null, '2021-05-03', null, null, 'Equipment maintenence expense', null, 196.88, 5);
insert into Clean_And_Go.Transaction 
values('95', null, null, null, '2021-05-04', null, null, 'Equipment maintenence expense', null, 103.44, 5);
insert into Clean_And_Go.Transaction 
values('96', null, null, null, '2021-05-08', null, null, 'Equipment maintenence expense', null, 86.88, 5);
insert into Clean_And_Go.Transaction 
values('97', null, null, null, '2021-05-09', null, null, 'Equipment maintenence expense', null, 184.86, 5);
insert into Clean_And_Go.Transaction 
values('98', null, null, null, '2021-05-10', null, null, 'Equipment maintenence expense', null, 196.88, 5);
insert into Clean_And_Go.Transaction 
values('99', null, null, null, '2021-05-11', null, null, 'Equipment maintenence expense', null, 103.44, 5);
insert into Clean_And_Go.Transaction 
values('100', null, null, null, '2021-05-15', null, null, 'Equipment maintenence expense', null, 86.88, 5);
insert into Clean_And_Go.Transaction 
values('101', null, null, null, '2021-05-16', null, null, 'Equipment maintenence expense', null, 184.86, 5);
insert into Clean_And_Go.Transaction 
values('102', null, null, null, '2021-05-17', null, null, 'Equipment maintenence expense', null, 196.88, 5);
insert into Clean_And_Go.Transaction 
values('103', null, null, null, '2021-05-18', null, null, 'Equipment maintenence expense', null, 103.44, 5);
insert into Clean_And_Go.Transaction 
values('104', null, null, null, '2021-05-22', null, null, 'Equipment maintenence expense', null, 86.88, 5);
insert into Clean_And_Go.Transaction 
values('105', null, null, null, '2021-05-23', null, null, 'Equipment maintenence expense', null, 184.86, 5);
insert into Clean_And_Go.Transaction 
values('106', null, null, null, '2021-05-24', null, null, 'Equipment maintenence expense', null, 196.88, 5);
insert into Clean_And_Go.Transaction 
values('107', null, null, null, '2021-05-25', null, null, 'Equipment maintenence expense', null, 103.44, 5);
insert into Clean_And_Go.Transaction 
values('108', '2', 'dry sheet', NULL, '2021-05-01', 20, '2021-05-01', 'client needs to dry cloths', '2021-05-09', 75.56, 1);
insert into Clean_And_Go.Transaction 
values('109','1', 'soap', null , '2021-05-03', 10, '2021-05-03','Use soap for washing machines', '2021-05-09', 141.5, 1);
insert into Clean_And_Go.Transaction 
values('110','1', 'soap', null , '2021-05-03', 10, '2021-05-03','Use soap for washing machines', '2021-05-09', 141.5, 1);
insert into Clean_And_Go.Transaction 
values('111', '3', 'softener', NULL, '2021-05-21', 20, '2021-05-21', 'client needs to softener for their clothes', '2021-05-23', 225.5, 1);
insert into Clean_And_Go.Transaction 
values('112', '5', 'dry clean starter kit', NULL, '2021-05-21', 5, '2021-05-21', 'client needs to softener for their clothes', '2021-05-23', 112.75, 1);
insert into Clean_And_Go.Transaction 
values('113', '6', 'towel', NULL, '2021-05-21', 6, '2021-05-21', 'client needs to softener for their clothes', '2021-05-23', 22.44, 1);
insert into Clean_And_Go.Transaction 
values('114', '4', 'sponges', NULL, '2021-05-21', 10, '2021-05-21', 'client needs to softener for their clothes', '2021-05-23', 24.2, 1);
insert into Clean_And_Go.Transaction 
values('115', '5', 'dry clean refill kit', NULL, '2021-05-25', 3, '2021-05-25', 'client needs to dry cloths', '2021-05-26', 77.05, 1);
insert into Clean_And_Go.Transaction 
values('116', null, null, null, '2021-06-01', null, null, 'Salary Expense', null, 1734.28, 3);
insert into Clean_And_Go.Transaction 
values('117', null, null, null, '2021-06-01', null, null, 'Salary Expense', null, 1823.58, 3);
insert into Clean_And_Go.Transaction 
values('118', null, null, null, '2021-06-01', null, null, 'Salary Expense', null, 1923.78, 3);
insert into Clean_And_Go.Transaction 
values('119', null, null, null, '2021-06-01', null, '2021-04-10', 'Rent Expense', null, 1200, 4);
insert into Clean_And_Go.Transaction 
values('120', null, null, null, '2021-06-01', null, '2021-04-10', 'Utility Expense', null, 223.56,6);
insert into Clean_And_Go.Transaction 
values('121', null, null, null, '2021-06-01', null, null, 'Equipment maintenence expense', null, 86.88, 5);
insert into Clean_And_Go.Transaction 
values('122', null, null, null, '2021-06-02', null, null, 'Equipment maintenence expense', null, 184.86,5);
insert into Clean_And_Go.Transaction 
values('123', null, null, null, '2021-06-03', null, null, 'Equipment maintenence expense', null, 196.88, 5);
insert into Clean_And_Go.Transaction 
values('124', null, null, null, '2021-06-04', null, null, 'Equipment maintenence expense', null, 103.44, 5);
insert into Clean_And_Go.Transaction 
values('125', null, null, null, '2021-06-08', null, null, 'Equipment maintenence expense', null, 86.88,5);
insert into Clean_And_Go.Transaction 
values('126', null, null, null, '2021-06-09', null, null, 'Equipment maintenence expense', null, 184.86,5);
insert into Clean_And_Go.Transaction 
values('127', null, null, null, '2021-06-10', null, null, 'Equipment maintenence expense', null, 196.88, 5);
insert into Clean_And_Go.Transaction 
values('128', null, null, null, '2021-06-11', null, null, 'Equipment maintenence expense', null, 103.44, 5);
insert into Clean_And_Go.Transaction 
values('129', null, null, null, '2021-06-15', null, null, 'Equipment maintenence expense', null, 86.88, 5);
insert into Clean_And_Go.Transaction 
values('130', null, null, null, '2021-06-16', null, null, 'Equipment maintenence expense', null, 184.86, 5);
insert into Clean_And_Go.Transaction 
values('131', null, null, null, '2021-06-17', null, null, 'Equipment maintenence expense', null, 196.88,5 );
insert into Clean_And_Go.Transaction 
values('132', null, null, null, '2021-06-18', null, null, 'Equipment maintenence expense', null, 103.44, 5);
insert into Clean_And_Go.Transaction 
values('133', null, null, null, '2021-06-22', null, null, 'Equipment maintenence expense', null, 86.88, 5);
insert into Clean_And_Go.Transaction 
values('134', null, null, null, '2021-06-23', null, null, 'Equipment maintenence expense', null, 184.86, 5);
insert into Clean_And_Go.Transaction 
values('135', null, null, null, '2021-06-24', null, null, 'Equipment maintenence expense', null, 196.88, 5);
insert into Clean_And_Go.Transaction 
values('136', null, null, null, '2021-06-25', null, null, 'Equipment maintenence expense', null, 103.44, 5);
insert into Clean_And_Go.Transaction 
values('137', '2', 'dry sheet', NULL, '2021-06-01', 20, '2021-06-01', 'client needs to dry cloths', '2021-06-09', 75.56, 1);
insert into Clean_And_Go.Transaction 
values('138','1', 'soap', null , '2021-06-03', 10, '2021-06-03','Use soap for washing machines', '2021-06-09', 141.5, 1);
insert into Clean_And_Go.Transaction 
values('139','1', 'soap', null , '2021-06-03', 10, '2021-06-03','Use soap for washing machines', '2021-06-09', 141.5, 1);
insert into Clean_And_Go.Transaction 
values('140', '3', 'softener', NULL, '2021-06-21', 20, '2021-06-21', 'client needs to softener for their clothes', '2021-06-23', 225.5, 1);
insert into Clean_And_Go.Transaction 
values('141', '5', 'dry clean starter kit', NULL, '2021-06-21', 5, '2021-06-21', 'client needs to softener for their clothes', '2021-02-23', 112.75, 1);
insert into Clean_And_Go.Transaction 
values('142', '6', 'towel', NULL, '2021-06-21', 6, '2021-06-21', 'client needs to softener for their clothes', '2021-06-23', 22.44, 1);
insert into Clean_And_Go.Transaction 
values('143', '4', 'sponges', NULL, '2021-06-21', 10, '2021-06-21', 'client needs to softener for their clothes', '2021-06-23', 24.2, 1);
insert into Clean_And_Go.Transaction 
values('144', '5', 'dry clean refill kit', NULL, '2021-06-25', 3, '2021-06-25', 'client needs to dry cloths', '2021-06-26', 77.05, 1);


