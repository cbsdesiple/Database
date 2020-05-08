SELECT * from client;
SELECT * from employee;
SELECT * FROM job_ticket
SELECT * from ticket_service;
SELECT * from services;
SELECT * from Service_Location;
SELECT * from Service_Zones;
SELECT * from zone_nums;

-- Setting up FKs
ALTER TABLE ticket_service ADD CONSTRAINT job_ticket_service_fk1 
    FOREIGN KEY (ticket_id) REFERENCES job_ticket (ticket_id);
ALTER TABLE ticket_service ADD CONSTRAINT job_ticket_service_fk2 
    FOREIGN KEY (service_name) REFERENCES services (service_name);
ALTER TABLE Service_Location ADD CONSTRAINT Service_Location_fk1 
    FOREIGN KEY (zip) REFERENCES service_zones (zip);
ALTER TABLE Service_Location ADD CONSTRAINT Service_Location_fk2 
    FOREIGN KEY (client_id) REFERENCES client (client_id);
ALTER TABLE job_ticket ADD CONSTRAINT job_ticket_fk 
    FOREIGN KEY (location_id) REFERENCES Service_Location (location_id);
ALTER Table employee ADD CONSTRAINT employee_fk 
    FOREIGN KEY (zone) REFERENCES zone_nums (zone_num);
ALTER Table service_zones ADD CONSTRAINT service_zones_fk 
    FOREIGN KEY (zone_num) REFERENCES zone_nums (zone_num);

--Adding Unique Constraints
ALTER TABLE client ADD CONSTRAINT phone_U UNIQUE(client_phone);
ALTER TABLE employee ADD CONSTRAINT ephone_U UNIQUE(phone);
ALTER TABLE employee ADD CONSTRAINT email_U UNIQUE(e_mail);

--Adding Default Constraints
ALTER Table job_ticket 
    ADD CONSTRAINT isPaid_df
    default 0 FOR isPaid ;

ALTER Table job_ticket 
    ADD CONSTRAINT isComplete_df
    default 0 FOR isComplete ;

--Select and Update statements
--Change arrival date/time when employee arrives
UPDATE job_ticket
    set arrival_date = '2020-04-20', arrival_time ='15:00:00'
    WHERE ticket_id = 3200;

SELECT * from job_ticket 
    WHERE ticket_id = 3200;

    
--Change job Status to complete and add time completed when employee completes job
UPDATE job_ticket
    set isComplete = 1, time_to_complete = '2.5'
    WHERE ticket_id = 3200;

SELECT * from job_ticket
    WHERE ticket_id = 3200;

--UPDATE scheduled date to new date if job needs to be rescheduled
UPDATE job_ticket
    set scheduled_date = '2020-04-23'
    WHERE ticket_id = 3300;

SELECT * from job_ticket
    WHERE ticket_id = 3300;

--List of jobs for a day sorted by distance from office for an employee
SELECT jt.ticket_id, distance_from_office, sl.street, sl.city, sl.state, ts.service_name, jt.notes
    FROM employee e INNER JOIN zone_nums zn
    ON e.zone = zn.zone_num
    INNER JOIN service_zones sz
    ON zn.zone_num = sz.zone_num
    INNER JOIN Service_Location sl
    ON sz.Zip = Sl.Zip
    INNER JOIN job_ticket jt
    ON sl.location_id = jt.location_id
    INNER JOIN ticket_service ts
    ON jt.ticket_id = ts.ticket_id
    WHERE e.employee_id = 5000 and jt.scheduled_date = '2020-04-20'
    ORDER BY distance_from_office asc;

--Cost of a job tickets for a day
SELECT jt.ticket_id, (s.cost_per_hour * jt.time_to_complete) as job_cost
    from job_ticket jt INNER JOIN ticket_service ts
    on jt.ticket_id = ts.ticket_id
    INNER JOIN services s
    on s.service_name = ts.service_name
    WHERE jt.arrival_date = '2020-04-19' and isComplete = 1;

--List of location per employee
SELECT e.first_name, e.Last_Name, sl.location_id
    FROM employee e INNER JOIN zone_nums 
    ON e.zone = zone_nums.zone_num 
    INNER JOIN service_zones
    ON zone_nums.zone_num = service_zones.zone_num
    INNER JOIN Service_Location sl
    ON service_zones.Zip = sl.Zip
    ORDER by e.Last_Name ASC;

--Bill a client for work completed but not paid
SELECT c.client_id, s.service_name, s.cost_per_hour, 
    jt.time_to_complete, (s.cost_per_hour * jt.time_to_complete) as job_cost
    FROM client c INNER JOIN Service_Location sl
    on c.client_id = sl.client_id
    INNER JOIN job_ticket jt
    on sl.location_id = jt.location_id
    INNER JOIN ticket_service ts
    on jt.ticket_id = ts.ticket_id
    INNER JOIN services s
    on ts.service_name = s.service_name
    WHERE c.client_id = 2 and isComplete = 1 and isPaid = 0;

--Provide client with when services are scheduled to be completed. 
SELECT c.client_id, s.service_name, scheduled_date
    FROM client c INNER JOIN Service_Location sl
    on c.client_id = sl.client_id
    INNER JOIN job_ticket jt
    on sl.location_id = jt.location_id
    INNER JOIN ticket_service ts
    on jt.ticket_id = ts.ticket_id
    INNER JOIN services s
    on ts.service_name = s.service_name
    WHERE c.client_id = 2 and isComplete = 0;