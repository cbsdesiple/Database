DROP Table ticket_service;
DROP Table serivces;
DROP TABLE employee;
DROP TABLE job_ticket;
DROP TABLE Service_Location;
DROP TABLE Service_Zone;
DROP TABLE client;

CREATE TABLE client(
    client_id int NOT NULL IDENTITY (1, 1),
    client_fname VARCHAR (15) NOT NULL,
    client_lname VARCHAR (15) NOT NULL,
    phone VARCHAR (15),
    billing_street VARCHAR(30),
    billing_city VARCHAR (15),
    billing_state CHAR (2),
    billing_zip CHAR (5),
    CONSTRAINT pk_client PRIMARY Key (client_id)
);

INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('Billy', 'Bob', '205-555-6371', 'Tractor St.', 'Farmdale', 'AL', '11123');
INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('John', 'Smith', '205-555-3553', 'Fast Food and Guns Dr.', 'Freedomopolis', 'AL', '98765');
INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('Jacob', 'Grundy', '205-555-0001', 'First Name Lane', 'Jinglevile',  'AL', '37698');
INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('Jingleheimer', 'Schmidt', '205-555-0203', 'Mynametoo Dr.', 'Appleseed', 'AL', '37222');
INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('Jane', 'Doe', '205-555-7761', 'Mortuus St.', 'Homocillia', 'AL', '88893');
INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('Mary', 'Jane', '205-555-9871', 'Perfection St.', 'Moneyopolis', 'AL', '73552');
INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('Bruce', 'Wayne', '732-555-8008', 'Bat Cave', 'Gotham', 'NJ', '77721');
INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('Clark', 'Kent', '447-555-6789', 'Bird Plane Dr.', 'Metropolis', 'IL', '78466');
INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('Anastasia', 'Hays', '205-555-9561', 'Fairway Cir.', 'Birmingham', 'AL', '35005');
INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('Isabell', 'Nelson', '205-555-1154', 'Winding Street', 'Birmingham', 'AL', '35218');
INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('Sharron', 'Price', '205-555-6880', 'Ferris Ln.', 'Birmingham', 'AL', '35246');
INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('Aminha', 'Dixon', '205-555-3353', 'Luther Dr.', 'Birmingham', 'AL', '35218');
INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('Georgina', 'Brooks', '205-555-3255', 'Armington St.', 'Birmingham', 'AL', '35218');
INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('Aidan', 'Alexander', '205-555-5047', 'Weldmont Dr.', 'Birmingham', 'AL', '35254');
INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('Willie', 'Patterson', '205-555-3175', 'Ingram St', 'Birmingham', 'AL', '35218');
INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('Rosemary', 'Cooper', '205-555-2055', 'Eve Ln.', 'Birmingham', 'AL', '35223');
INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('Kaitlyn', 'Murphy', '205-555-2529', 'Underton Ln.', 'Birmingham', 'AL', '35218');
INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('Kara', 'Foster', '205-555-7867', 'Relfered Dr.', 'Birmingham', 'AL', '35005');
INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('Carline', 'Johnson', '205-555-4344', 'Everest Ln.', 'Birmingham', 'AL', '35246');
INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('Aleena', 'Collins', '205-555-9300', 'Miles St.', 'Birmingham', 'AL', '35218');
INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('Ashley', 'Russell', '205-555-0101', 'Cuderton Ln.', 'Birmigham', 'AL', '35219');
INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('Muhammad', 'Brown', '205-555-7334', 'Onward St.', 'Birmingham', 'AL', '35229');
INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('Joshua', 'Marshall', '205-555-7899', 'Dreamers Ln.', 'Birmingham', 'AL', '35233');
INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('Thomas', 'Gibson', '205-555-4312', 'Mountling Dr.', 'Birmingham', 'AL', '35218');
INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('Christopher' , 'Lee', '205-555-1118', 'Leeford Ln.', 'Birmingham', 'AL', '35296');
INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('Eric', 'Webb', '205-555-3722', 'Parks Ln.', 'Birmingham', 'AL', '35005');
INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('Jamie', 'Taylor', '205-555-3701', 'Roberton Ln.', 'Birmingham', 'AL', '35254'); 
INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('Walter', 'White', '205-555-6642', 'Parkway Dr.', 'Birmingham', 'AL', '35205');
INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('Hugh', 'Phillips', '205-555-6908', 'Trodding Dr.', 'Brimingham', 'AL', '35246');
INSERT INTO client(client_fname, client_lname, phone, billing_st, billing_city, billing_state, billing_zip)
    VALUES('Edgar', 'Poe', '205-555-8675', 'Rapping Door Dr.', 'Birmingham', 'AL', '35005');

SELECT * FROM client;

CREATE Table Service_Zone(
    zip CHAR (5) Not NULL,
    zone_num varchar (2) NOT NULL,
    CONSTRAINT zone_pk PRIMARY Key (zip)
);

CREATE TABLE service_location(
    location_id int NOT NULL IDENTITY (100,10),
    client_id int NOT NULL,
    distance_from_office int,
    street VARCHAR(20) Not NULL,
    city VARCHAR (15) NOT NULL,
    state CHAR (2) NOT NULL,
    zip CHAR (5) NOT NULL,
    CONSTRAINT pk_slocation PRIMARY KEY (location_id),
    CONSTRAINT slocation_fk1 FOREIGN KEY (client_id) REFERENCES Client(client_id),
    CONSTRAINT slocation_fk2 FOREIGN Key (zip) REFERENCES Service_Zone (zip)
);

CREATE TABLE job_ticket (
    ticket_id int NOT NULL IDENTITY (100, 100),
    location_id int NOT NULL,
    scheduled_date DATE,
    arrival_date DATE,
    arrival_time TIME,
    time_to_complete decimal (2, 2),
    isComplete BIT default 0,
    notes VARCHAR(2000),
    isPaid BIT default 0,
    CONSTRAINT pk_job_ticket PRIMARY KEY (ticket_id),
    CONSTRAINT fk_job_ticket FOREIGN Key (location_id) REFERENCES Service_Location(location_id)
);

Create TABLE employee (
    employee_id int NOT NULL IDENTITY (1000, 100),
    fname VARCHAR(15) NOT NULL,
    lname VARCHAR(15) NOT NULL,
    phone VARCHAR(15),
    email VARCHAR(50),
    zone_num int,
    CONSTRAINT pk_employee PRIMARY KEY (employee_id),
    CONSTRAINT fk_employee FOREIGN Key (zone_num) REFERENCES zone_nums(zone_num)
);

CREATE table services (
    service_name VARCHAR (15) NOT NULL,
    service_description VARCHAR (50),
    cost_per_hour DECIMAL (5, 2),
    CONSTRAINT pk_services PRIMARY KEY (service_name)
);

CREATE TABLE job_ticket_service (
    ticket_id int NOT NULL,
    service_name VARCHAR (15) NOT NULL,
    CONSTRAINT pk_job_ticket_service PRIMARY KEY (ticket_id, service_name),
    CONSTRAINT job_ticket_service_fk1 FOREIGN KEY (ticket_id) REFERENCES job_ticket(ticket_id),
    CONSTRAINT job_ticket_service_fk2 FOREIGN KEY (service_name) REFERENCES services(service_name)
)

CREATE table zone_nums(
    zone_num TINYINT NOT NULL,
    CONSTRAINT zone_nums_pk PRIMARY KEY (zone_num)
);

INSERT into zone_nums VALUES (1);
INSERT into zone_nums VALUES (2);
INSERT into zone_nums VALUES (3);
INSERT into zone_nums VALUES (4);
INSERT into zone_nums VALUES (5);
INSERT into zone_nums VALUES (6);
INSERT into zone_nums VALUES (7);
INSERT into zone_nums VALUES (8);

