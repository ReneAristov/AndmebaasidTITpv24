## Andmebass Hotelliruumi reserveerimine
```sql
CREATE TABLE guest(
guestID int Primary key identity(1,1),
firstname varchar(80),
lastname varchar(80)not null,
memberSince DATE);

SELECT * FROM guest;
INSERT INTO guest
VALUES ('Roman', 'Aristov','2026-08-23');
```
<img width="299" height="83" alt="{8202C68B-50A7-4DE8-A9D7-E6B80886ACE2}" src="https://github.com/user-attachments/assets/3735b00e-74c6-41e4-935b-fcce5b5ce991" />


