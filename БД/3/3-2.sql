--1
Select *
from Читатели
Where Адрес like '%Шипиловская%' and year(Дата_рождения) =  Year('1990-01-01')

--2
Select Контактный_телефон, Фамилия, Читатели.*
from Читатели
Where Фамилия like '[АБВ]%'

--3
Select *
Into Задание_3
from Читатели
Where Адрес like '%Шипиловская%' and year(Дата_рождения) =  Year('1990-01-01') and 
Читатели.Код_читателя not in (select Код_читателя From Абонемент)

--4
insert into Задание_3
Select *
From Читатели
Where Контактный_телефон is Null and not exists
(select * from Задание_3 Where Контактный_телефон is Null and Задание_3.Код_читателя = Читатели.Код_читателя)

--5
Update Задание_3
set Адрес = 'Борисовский проезд'
Where Адрес like '%Домодедовская улица%'

--6
DELETE Задание_3
where Паспортные_данные is Null

--7
Select Код_читателя, Count(Код_книги) as Количество_взятых_книг
From Абонемент
Group by Код_читателя