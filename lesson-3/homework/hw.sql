1.Define and explain the purpose of BULK INSERT in SQL Server.

  BULK INSERT Talabalar
FROM 'D:\Data\talabalar.csv'
WITH (
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n',
    FIRSTROW = 2
);

2.List four file formats that can be imported into SQL Server

1). CSV (Comma-Separated Values)
Ustunlar vergul bilan ajratilgan matn fayli.

Juda keng tarqalgan va BULK INSERT, bcp, yoki OPENROWSET orqali oson import qilinadi.

Fayl kengaytmasi: .csv

2). TXT (Plain Text File)
Oddiy matn fayli, odatda ustunlar belgilangan ajratuvchi belgilar (masalan, tab \t, nuqta-vergul ;) bilan ajratilgan bo‘ladi.

Fayl kengaytmasi: .txt

3). XML (eXtensible Markup Language)
Tuziqli va o‘zaro bog‘langan ma’lumotlarni ifodalash uchun ishlatiladi.

SQL Serverda OPENXML, XML ma’lumot turi va nodes() metodi orqali import qilinadi.

Fayl kengaytmasi: .xml

4). JSON (JavaScript Object Notation)
Yengil vaznli ma’lumot almashish formati, tuzilmasi oddiy va mashhur.

SQL Serverda OPENJSON funksiyasi orqali o‘qiladi.

Fayl kengaytmasi: .json

3.Create a table Products with columns: ProductID (INT, PRIMARY KEY), ProductName (VARCHAR(50)), Price (DECIMAL(10,2)).

  CREATE TABLE PRODUCTS(ProductID INT PRIMARY KEY, ProductName VARCHAR(50), Narx DECIMAL(10,2));

4.


