--1
Select *
from ��������
Where ����� like '%�����������%' and year(����_��������) =  Year('1990-01-01')

--2
Select ����������_�������, �������, ��������.*
from ��������
Where ������� like '[���]%'

--3
Select *
Into �������_3
from ��������
Where ����� like '%�����������%' and year(����_��������) =  Year('1990-01-01') and 
��������.���_�������� not in (select ���_�������� From ���������)

--4
insert into �������_3
Select *
From ��������
Where ����������_������� is Null and not exists
(select * from �������_3 Where ����������_������� is Null and �������_3.���_�������� = ��������.���_��������)

--5
Update �������_3
set ����� = '����������� ������'
Where ����� like '%������������� �����%'

--6
DELETE �������_3
where ����������_������ is Null

--7
Select ���_��������, Count(���_�����) as ����������_������_����
From ���������
Group by ���_��������