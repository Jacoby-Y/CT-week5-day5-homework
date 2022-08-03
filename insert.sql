SELECT add_customer('Bobby', 'Johns');
SELECT add_customer('Jody', 'Counter');
SELECT add_customer('Koby', 'McBroth');
SELECT add_customer('Jacualin', 'Murkathon');
SELECT add_customer('Wizard', 'Magico');

SELECT add_car('2CTFLJEY1A6372319', 'Volt', 'Chevy', 2020, 37000);
SELECT add_car('3GNEC13TX2G256984', 'S10', 'Chevy', 2002, 3000);
SELECT add_car('3FAKP1132XR203281', 'Silverado', 'Chevy', 2022, 32000);
SELECT add_car('1GDM7H1C6XJ523723', 'Camaro', 'Chevy', 2022, 30000);
SELECT add_car('KMHTC6AD4DU153774', 'Malibu', 'Chevy', 2020, 24000);

SELECT add_salesman('Aleyna', 'Shepherd');
SELECT add_salesman('Leyton', 'Bentley');
SELECT add_salesman('Haris', 'Millar');
SELECT add_salesman('Rebeca', 'Daly');
SELECT add_salesman('Zakariyah', 'Tucker');

SELECT add_mechanic('Danika', 'Kumar');
SELECT add_mechanic('Eliza', 'Thorne');
SELECT add_mechanic('Kornelia', 'Greenwood');
SELECT add_mechanic('Eesa', 'Ayers');
SELECT add_mechanic('Reya', 'Owens');

SELECT add_service(1, '2CTFLJEY1A6372319');
SELECT add_service(2, '3GNEC13TX2G256984');
SELECT add_service(3, '3FAKP1132XR203281');
SELECT add_service(4, '1GDM7H1C6XJ523723');
SELECT add_service(5, 'KMHTC6AD4DU153774');

SELECT add_mechanic_service(1, 1);
SELECT add_mechanic_service(2, 2);
SELECT add_mechanic_service(3, 3);
SELECT add_mechanic_service(4, 4);
SELECT add_mechanic_service(5, 5);

SELECT add_invoice('2CTFLJEY1A6372319', 37000, 0, 1, 1);
SELECT add_invoice('3GNEC13TX2G256984', 3000, 0, 2, 2);
SELECT add_invoice('3FAKP1132XR203281', 32000, 0, 3, 3);
SELECT add_invoice('1GDM7H1C6XJ523723', 30000, 0, 4, 4);
SELECT add_invoice('KMHTC6AD4DU153774', 24000, 0, 5, 5);