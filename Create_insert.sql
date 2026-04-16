CREATE DATABASE TITpv24baas;

--ab kustutamine
Drop DATABASE Logitpv24Baas;

use TITPV24baas;
--tabeli loomine
Create table opilane(
opilaneID int Primary Key identity(1,1), --automaatselt täidab numbritega
eesnimi varchar(25),
perenimi varchar(30) NOT NULL,
synniaeg DATE,
stip bit,
mobiil varchar(13),
aadress TEXT,
keskmineHinne decimal(2,1) );--(2--kokku, 1- peale komat nt 4.5)

SELECT * FROM opilane;

--tabeli täitmine
INSERT INTO opilane
VALUES ('Rene','Aristov', '2007-08-23',1,'+3725138479','Tallinn', 4.5)
Insert INTO opilane(perenimi, eesnimi, keskmineHinne)
VALUES ('Holovanov', 'Ivan', 4.2),
('Holovanov', 'Ivan', 4.2),
('Sereda', 'Ivan', 4.2),
('Suvorov', 'Marko', 4.2);

--andmete uuendamine tabelis
UPDATE opilane SET stip=1, aadress='Tallinn';
UPDATE opilane SET stip=1, aadress='Tartu' WHERE opilaneID=4;
--kustutamine
--tabeli kustutamine
DROP TABLE opilane;
--andmete kustutamine tabelis
DELETE FROM opilane WHERE opilaneID=2;
Select * FROM opilane

--FOREIGN KEY
CREATE TABLE opetamine(
opetamineId int PRIMARY KEY identity(1,1),
kuupaev DATE,
oppeaine varchar(30),
opilaneID int,
FOREIGN KEY (opilaneID) REFERENCES opilane(opilaneID),
hinne int CHECK(hinne<=5));

SELECT * FROM opetamine;
SELECT * FROM opilane;
--täidame tabeli
INSERT INTO opetamine
VALUES ('2026-04-16', 'andmebaasid', 1, 5)






CREATE TABLE opetaja(
    opetajaID int PRIMARY KEY identity(1,1),
    nimi varchar(50),
    epost varchar(50),
    ruum varchar(10)
);

CREATE TABLE tund(
    tundID int PRIMARY KEY identity(1,1),
    kuupaev DATE,
    tundnimi varchar(50),
    opetajaID int,
    opetamineID int,
);

INSERT INTO opetaja
VALUES ('Oleg','oleg.kask@school.ee','A243');

SELECT * FROM opetaja;

INSERT INTO tund
VALUES ('2026-04-16','IT',1,1);

SELECT * FROM tund;
