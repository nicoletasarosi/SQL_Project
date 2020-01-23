
create database croaziera;

create table travel_class(
id_travel_class int NOT NULL PRIMARY KEY,
description_travel varchar(100),
);

create table calatorie(
id_calatorie int not null primary key,
number int,
destination varchar(100),
starting_from varchar(100),
departure_time date,
arrive_time date
);

create table travel_class_seat_capacity(
seat_capacity int primary key not null,
calatorie_id int foreign key references calatorie(id_calatorie),
travel_class_id int foreign key references travel_class(id_travel_class)
);

create table booking_status(
code int primary key,
status_b varchar(100)
);

create table ticket_type(
code int primary key,
description varchar(100)
);

create table passengers(
id int not null primary key,
first_name varchar(100),
last_name varchar(100),
phone varchar(15),
email varchar(100)
);

create table payment_status(
code int primary key,
descr varchar(100)
);

create table payment(
id int primary key not null,
amount int not null,
data_platii date,
payment_status_id int foreign key references payment_status(code)
);

create table booking(
id int not null primary key,
booking_date date,
calatorie_id int foreign key references calatorie(id_calatorie),
travel_class_id int foreign key references travel_class(id_travel_class),
status_code int foreign key references booking_status(code),
passengers_id int foreign key references passengers(id)
);

create table rate(
id int primary key not null,
payments_id int foreign key references payment(id),
booking_id int foreign key references booking(id)
);

alter table booking
add ticket_type_code int;
alter table booking
add foreign key (ticket_type_code) references ticket_type(code);


INSERT INTO travel_class(id_travel_class,description_travel) VALUES (100,'clasa I');
INSERT INTO travel_class(id_travel_class,description_travel) VALUES (101,'clasa II');
INSERT INTO travel_class(id_travel_class,description_travel) VALUES (102,'clasa I');
INSERT INTO travel_class(id_travel_class,description_travel) VALUES (103,'clasa II');
INSERT INTO travel_class(id_travel_class,description_travel) VALUES (104,'clasa I');
INSERT INTO travel_class(id_travel_class,description_travel) VALUES (105,'clasa I');
INSERT INTO travel_class(id_travel_class,description_travel) VALUES (106,'clasa II');
INSERT INTO travel_class(id_travel_class,description_travel) VALUES (107,'clasa I');
INSERT INTO travel_class(id_travel_class,description_travel) VALUES (108,'clasa I');
INSERT INTO travel_class(id_travel_class,description_travel) VALUES (109,'clasa II');



INSERT INTO calatorie(id_calatorie ,number ,destination,starting_from,departure_time, arrive_time) VALUES (200, 7454, 'Miami','Cluj-Napoca', '2019-8-19', '2019-10-16');
INSERT INTO calatorie(id_calatorie ,number ,destination,starting_from,departure_time, arrive_time) VALUES (201, 7454, 'San Francisco','Cluj-Napoca', '2019-4-18', '2019-6-20');
INSERT INTO calatorie(id_calatorie ,number ,destination,starting_from,departure_time, arrive_time) VALUES (202, 7454, 'Los Angeles','Cluj-Napoca', '2019-10-19', '2019-12-15');
INSERT INTO calatorie(id_calatorie ,number ,destination,starting_from,departure_time, arrive_time) VALUES (203, 7454, 'Maldive','Cluj-Napoca', '2019-11-10', '2019-12-8');
INSERT INTO calatorie(id_calatorie ,number ,destination,starting_from,departure_time, arrive_time) VALUES (204, 7454, 'Indonesia','Cluj-Napoca', '2019-10-8', '2019-12-10');



INSERT INTO travel_class_seat_capacity(seat_capacity ,calatorie_id ,travel_class_id ) values (1000, 200, 100);
INSERT INTO travel_class_seat_capacity(seat_capacity ,calatorie_id ,travel_class_id ) values (3000, 201, 101);
INSERT INTO travel_class_seat_capacity(seat_capacity ,calatorie_id ,travel_class_id ) values (2000, 202, 102);
INSERT INTO travel_class_seat_capacity(seat_capacity ,calatorie_id ,travel_class_id ) values (1500, 203, 103);
INSERT INTO travel_class_seat_capacity(seat_capacity ,calatorie_id ,travel_class_id ) values (800, 204, 104);



INSERT INTO booking_status(code ,status_b ) values (300, 'rezervat');
INSERT INTO booking_status(code ,status_b ) values (301, 'in asteptare');
INSERT INTO booking_status(code ,status_b ) values (302, 'rezervat');
INSERT INTO booking_status(code ,status_b ) values (303, 'in asteptare');
INSERT INTO booking_status(code ,status_b ) values (304, 'rezervat');
INSERT INTO booking_status(code ,status_b ) values (305, 'rezervat');
INSERT INTO booking_status(code ,status_b ) values (306, 'in asteptare');
INSERT INTO booking_status(code ,status_b ) values (307, 'rezervat');
INSERT INTO booking_status(code ,status_b ) values (308, 'rezervat');
INSERT INTO booking_status(code ,status_b ) values (309, 'in asteptare');


INSERT INTO ticket_type(code ,description ) values (500, 'general');
INSERT INTO ticket_type(code ,description ) values (501, 'general');
INSERT INTO ticket_type(code ,description ) values (502, 'vip');
INSERT INTO ticket_type(code ,description ) values (503, 'vip');
INSERT INTO ticket_type(code ,description ) values (504, 'general');
INSERT INTO ticket_type(code ,description ) values (505, 'vip');
INSERT INTO ticket_type(code ,description ) values (506, 'vip');
INSERT INTO ticket_type(code ,description ) values (507, 'general');
INSERT INTO ticket_type(code ,description ) values (508, 'general');
INSERT INTO ticket_type(code ,description ) values (509, 'vip');

INSERT INTO passengers(id ,first_name ,last_name ,phone,email ) VALUES (400, 'Mihai', 'Popescu', '0735253546', 'jffdf@yahoo.com');
INSERT INTO passengers(id ,first_name ,last_name ,phone,email ) VALUES (401, 'Maria', 'Dardai', '07354253546', 'qeewgf@yahoo.com');
INSERT INTO passengers(id ,first_name ,last_name ,phone,email ) VALUES (402, 'Ioana', 'Mersa', '0735263546', 'popecf@yahoo.com');
INSERT INTO passengers(id ,first_name ,last_name ,phone,email ) VALUES (403, 'Iulia', 'Popa', '0735234546', 'mmmacf@yahoo.com');
INSERT INTO passengers(id ,first_name ,last_name ,phone,email ) VALUES (404, 'Mihaela', 'Reluc', '0775253546', 'jjjd@yahoo.com');
INSERT INTO passengers(id ,first_name ,last_name ,phone,email ) VALUES (405, 'Mircea', 'Potra', '0735683546', 'trrvcf@yahoo.com');
INSERT INTO passengers(id ,first_name ,last_name ,phone,email ) VALUES (406, 'Melania', 'Savu', '0735678546', 'jdgfhff@yahoo.com');
INSERT INTO passengers(id ,first_name ,last_name ,phone,email ) VALUES (407, 'Melisa', 'Serban', '0733293546', 'gfbhdfjcf@yahoo.com');
INSERT INTO passengers(id ,first_name ,last_name ,phone,email ) VALUES (408, 'Mihai', 'Pop', '0735253906', 'jdjf@yahoo.com');
INSERT INTO passengers(id ,first_name ,last_name ,phone,email ) VALUES (409, 'Patricia', 'Ionescu', '0735253456', 'jdjcf@yahoo.com');


INSERT INTO payment_status(code ,descr ) VALUES (600, 'PLATIT');
INSERT INTO payment_status(code ,descr ) VALUES (601, 'PLATIT');
INSERT INTO payment_status(code ,descr ) VALUES (602, 'IN ASTEPTARE');
INSERT INTO payment_status(code ,descr ) VALUES (603, 'IN ASTEPTARE');
INSERT INTO payment_status(code ,descr ) VALUES (604, 'PLATIT');
INSERT INTO payment_status(code ,descr ) VALUES (605, 'IN ASTEPTARE');
INSERT INTO payment_status(code ,descr ) VALUES (606, 'PLATIT');
INSERT INTO payment_status(code ,descr ) VALUES (607, 'IN ASTEPTARE');
INSERT INTO payment_status(code ,descr ) VALUES (608, 'PLATIT');
INSERT INTO payment_status(code ,descr ) VALUES (609, 'PLATIT');



INSERT INTO payment(id ,amount ,data_platii,payment_status_id ) VALUES (700, 2000, '2019-12-22',600);
INSERT INTO payment(id ,amount ,data_platii,payment_status_id ) VALUES (701, 2120, '2019-10-25',601);
INSERT INTO payment(id ,amount ,data_platii,payment_status_id ) VALUES (702, 644, '2019-10-22',602);
INSERT INTO payment(id ,amount ,data_platii,payment_status_id ) VALUES (703, 2000, '2019-10-12',603);
INSERT INTO payment(id ,amount ,data_platii,payment_status_id ) VALUES (704, 2838, '2019-12-12',604);
INSERT INTO payment(id ,amount ,data_platii,payment_status_id ) VALUES (705, 6464, '2019-11-21',605);
INSERT INTO payment(id ,amount ,data_platii,payment_status_id ) VALUES (706, 2054, '2019-11-23',606);
INSERT INTO payment(id ,amount ,data_platii,payment_status_id ) VALUES (707, 757, '2019-10-16',607);
INSERT INTO payment(id ,amount ,data_platii,payment_status_id ) VALUES (708, 2060, '2019-12-17',608);
INSERT INTO payment(id ,amount ,data_platii,payment_status_id ) VALUES (709, 4343, '2019-11-12',609);


INSERT INTO booking(id ,booking_date ,calatorie_id ,travel_class_id ,status_code ,passengers_id,ticket_type_code ) VALUES (800,'2019-10-14', 200, 100,300,400,500);
INSERT INTO booking(id ,booking_date ,calatorie_id ,travel_class_id ,status_code ,passengers_id,ticket_type_code ) VALUES (801,'2019-12-30', 201, 101,301,401,501);
INSERT INTO booking(id ,booking_date ,calatorie_id ,travel_class_id ,status_code ,passengers_id ,ticket_type_code) VALUES (802,'2019-10-29', 202, 102,302,402,502);
INSERT INTO booking(id ,booking_date ,calatorie_id ,travel_class_id ,status_code ,passengers_id ,ticket_type_code) VALUES (803,'2019-10-14', 203, 103,303,403,503);
INSERT INTO booking(id ,booking_date ,calatorie_id ,travel_class_id ,status_code ,passengers_id ,ticket_type_code) VALUES (804,'2019-10-14', 204, 104,304,404,504);
INSERT INTO booking(id ,booking_date ,calatorie_id ,travel_class_id ,status_code ,passengers_id ,ticket_type_code) VALUES (805,'2019-10-28', 201, 105,305,405,505);
INSERT INTO booking(id ,booking_date ,calatorie_id ,travel_class_id ,status_code ,passengers_id ,ticket_type_code) VALUES (806,'2019-11-23', 202, 106,306,406,506);
INSERT INTO booking(id ,booking_date ,calatorie_id ,travel_class_id ,status_code ,passengers_id,ticket_type_code ) VALUES (807,'2019-12-16', 203, 107,307,407,507);
INSERT INTO booking(id ,booking_date ,calatorie_id ,travel_class_id ,status_code ,passengers_id ,ticket_type_code) VALUES (808,'2019-12-11', 204, 108,308,408,508);
INSERT INTO booking(id ,booking_date ,calatorie_id ,travel_class_id ,status_code ,passengers_id ,ticket_type_code) VALUES (809,'2019-10-13', 204, 109,309,409,509);



INSERT INTO rate(id ,payments_id ,booking_id ) VALUES (900, 700, 800);
INSERT INTO rate(id ,payments_id ,booking_id ) VALUES (901, 701, 801);
INSERT INTO rate(id ,payments_id ,booking_id ) VALUES (902, 702, 802);
INSERT INTO rate(id ,payments_id ,booking_id ) VALUES (903, 703, 803);
INSERT INTO rate(id ,payments_id ,booking_id ) VALUES (904, 704, 804);
INSERT INTO rate(id ,payments_id ,booking_id ) VALUES (905, 705, 805);
INSERT INTO rate(id ,payments_id ,booking_id ) VALUES (906, 706, 806);
INSERT INTO rate(id ,payments_id ,booking_id ) VALUES (907, 707, 807);
INSERT INTO rate(id ,payments_id ,booking_id ) VALUES (908, 708, 808);
INSERT INTO rate(id ,payments_id ,booking_id ) VALUES (909, 709, 809);

SELECT * FROM calatorie Where destination in ('Miami');

SELECT passengers.first_name,passengers.last_name from passengers
	inner join booking on booking.passengers_id = passengers.id
	inner join calatorie on calatorie.id_calatorie = booking.calatorie_id
	where calatorie.destination='Indonesia';

select calatorie.arrive_time,calatorie.number,travel_class.description_travel from calatorie 
	left join travel_class_seat_capacity on calatorie.id_calatorie=travel_class_seat_capacity.calatorie_id
	inner join travel_class on travel_class_seat_capacity.travel_class_id=travel_class.id_travel_class;

select calatorie.number,calatorie.destination,travel_class.description_travel from calatorie 
	left join travel_class_seat_capacity on calatorie.id_calatorie=travel_class_seat_capacity.calatorie_id 
	inner join travel_class on travel_class_seat_capacity.travel_class_id=travel_class.id_travel_class;


select COUNT(code), description from ticket_type group by description;
select payment.amount, data_platii from payment group by data_platii;

SELECT passengers.first_name, passengers.last_name from passengers
	inner join booking on booking.passengers_id=passengers.id
	inner join booking_status on booking_status.code=booking.status_code
	where booking_status.status_b = 'rezervat';

select calatorie.starting_from, calatorie.destination, calatorie.departure_time from calatorie
	inner join booking on booking.calatorie_id=calatorie.id_calatorie
	where calatorie.starting_from='Cluj-Napoca';

select count (passengers.id) as "Numar calatori dupa destinatie", calatorie.destination from passengers
	inner join booking on booking.passengers_id=passengers.id
	inner join calatorie on booking.calatorie_id=calatorie.id_calatorie
	group by calatorie.destination
	having count(passengers.id) >1;

select ticket_type.description, count (passengers.id) as "Numar calatori dupa tipul de bilet" from passengers
	inner join booking on booking.passengers_id=passengers.id
	inner join ticket_type on booking.ticket_type_code=ticket_type.code
	group by ticket_type.description;

SELECT payment_status.descr,  COUNT (payment.id) as "Numar plati" from payment
	inner join payment_status on payment.payment_status_id=payment_status.code
	group by payment_status.descr;
	

select passengers.first_name, passengers.last_name from passengers
	inner join booking on booking.passengers_id=passengers.id
	inner join booking_status on booking_status.code=booking.status_code
	where booking_status.status_b='rezervat';
go


	-- v1  modifica tipul unei coloane;
CREATE PROCEDURE Up1 AS
BEGIN
    ALTER TABLE passengers
    ALTER COLUMN first_name varchar(35)
END;
go

CREATE PROCEDURE Down1 AS
BEGIN
    ALTER TABLE passengers
    ALTER COLUMN first_name varchar(30)
END;
go

-- v2  adauga o costrângere de “valoare implicită” pentru un câmp;
CREATE PROCEDURE Up2 AS
BEGIN
    ALTER TABLE travel_class_seat_capacity
    ADD CONSTRAINT seat_capacity DEFAULT 5 FOR seat_capacity
END;
go

CREATE PROCEDURE Down2 AS
BEGIN
    ALTER TABLE travel_class_seat_capacity
    DROP CONSTRAINT seat_capacity    
END;
go

-- v3  creea/şterge o tabelă;
CREATE PROCEDURE Up3 AS
BEGIN
    CREATE TABLE passport(
        id_passport INT PRIMARY KEY,
        id_passenger INT
    );
END;
go

CREATE PROCEDURE Down3 AS
BEGIN
    DROP TABLE passport;
END;

go

-- v4     adăuga un câmp nou;
CREATE PROCEDURE Up4 AS
BEGIN
    ALTER TABLE passengers
    ADD cnp INT
END;
go

CREATE PROCEDURE Down4 AS
BEGIN
    ALTER TABLE passengers
    DROP COLUMN cnp
END; 
go

-- v5   creea/şterge o constrângere de cheie străină
CREATE PROCEDURE Up5 AS
BEGIN
    ALTER TABLE travel_class
    ADD CONSTRAINT fk_id_travel_class FOREIGN KEY (id_travel_class) REFERENCES travel_class(id_travel_class)
END;
go

CREATE PROCEDURE Down5 AS
BEGIN
    ALTER TABLE travel_class
    DROP CONSTRAINT fk_id_travel_class
END;
go


CREATE TABLE versiuni(
    versiune INT PRIMARY KEY,
    procedura varchar(20),
    utilizata BIT
);
go

INSERT INTO versiuni VALUES
    (0, NULL, 1),
    (1, 'UP1', 0),
    (2, 'UP2', 0),
    (3, 'UP3', 0),
    (4, 'UP4', 0),
    (5, 'UP5', 0);
go

CREATE PROCEDURE set_versiune @versiune INT AS
BEGIN
    if @versiune < 0 OR @versiune > 5
        print 'Versiunile disponibile sunt: [1-5]'
    else
    BEGIN
        DECLARE @versiuneCurrenta INT
        DECLARE @procedura varchar(20)

        SET @versiuneCurrenta = (SELECT versiune FROM versiuni WHERE utilizata = 1);

        if @versiuneCurrenta = @versiune
            print 'Aceasta versiune este deja utilizata!'
        else
        BEGIN
            if @versiuneCurrenta = 0
            BEGIN
                SET @procedura = (SELECT procedura FROM versiuni WHERE versiune = @versiune);
				EXECUTE @procedura
            END
            else
            BEGIN
                SET @procedura = 'Down' + convert(varchar(20), @versiuneCurrenta);
                EXEC @procedura;

                if @versiune > 0
                BEGIN
                    SET @procedura = (SELECT procedura FROM versiuni WHERE versiune = @versiune);
                    EXEC @procedura
                END
            END

            UPDATE versiuni SET utilizata = 0 WHERE utilizata = 1;
			UPDATE versiuni SET utilizata = 1 WHERE versiune = @versiune;
			print 'Versiune bazei de date a fost actualizata cu succes!'
        END
    END
END;
go

EXEC set_versiune @versiune = 1;