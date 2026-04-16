# AndmebaasidTITpv24
andmebaasidega seotud SQL ja konspektid
# Põhimõisted
- andmebaas - struktureeritud andme kogus
- tabel - olem - сущность - ENTITY
- veerg - väli - поле - столбец
- rida - kirja - записи
- andmebaasi haaldussüsteem - tarkvara mille abil saab luua andmebaas - MariaDB / XAMPP, SQL Server 
  <img width="474" height="505" alt="{5A884E26-31F8-4733-B59C-C6B4C44D1044}" src="https://github.com/user-attachments/assets/753e2137-4a27-4ba7-aba1-65587077dfbd" />

- primaarne võti - Primary key - veerg(tavaliselt id nimega), unikaalne indifikaator, mis eristab iga kirje
- välisvõti - Foregein key - FK- veerg, mis loob seos teise tabeli primaarvõtmega
- päring - QUERY - запрос

# Andmetüübid
```
1. Numbrilised: INT, SmallINT, float, decimal(5,2)
2. Tekst/Sümbolised: varchar(255), char(5), TEXT
3. Loogilised: boolean, true/false, bit, bool
4. Kuupäeva: date, time, tatetime
```

## SQL - structure Query Language - struktureeritud päringu keel
- Tabeli loomine
  ```
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
  ```
- Andmete sisestamine tabelisse
  ```
  ```
