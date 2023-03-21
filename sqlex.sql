1) Найдите номер модели, скорость и размер жесткого диска для всех ПК стоимостью менее 500 дол. Вывести: model, speed и hd
SELECT model, speed, hd FROM PC
WHERE price < 500
* * *
2) Найдите производителей принтеров. Вывести: maker
SELECT DISTINCT maker FROM Product
WHERE type = 'Printer'
* * *
3) Найдите номер модели, объем памяти и размеры экранов ПК-блокнотов, цена которых превышает 1000 дол.
SELECT model, ram, screen FROM Laptop
WHERE price > 1000
* * *
4) Найдите все записи таблицы Printer для цветных принтеров.
SELECT * FROM Printer WHERE color = 'y'
* * *
5) Найдите номер модели, скорость и размер жесткого диска ПК, имеющих 12x или 24x CD и цену менее 600 дол.
SELECT model, speed, hd FROM PC
WHERE cd IN ('12x', '24x')
AND price < 600
* * *
6) Для каждого производителя, выпускающего ПК-блокноты c объёмом жесткого диска не менее 10 Гбайт, найти скорости таких ПК-блокнотов. Вывод: производитель, скорость.
SELECT maker, speed FROM Laptop
JOIN
(SELECT * FROM Product
WHERE type = 'laptop')
Product
ON Laptop.model = Product.model
WHERE hd >= 10
GROUP BY maker, speed
* * *
7) Найдите номера моделей и цены всех имеющихся в продаже продуктов (любого типа) производителя B (латинская буква).
SELECT DISTINCT PC.model, price
FROM PC
JOIN Product
ON PC.model = Product.model
WHERE maker = 'B'
UNION
SELECT DISTINCT Laptop.model, price
FROM Laptop
JOIN Product
ON Laptop.model = Product.model
WHERE maker = 'B'
UNION
SELECT DISTINCT Printer.model, price
FROM Printer
JOIN Product
ON Printer.model = Product.model
WHERE maker = 'B'
* * *
8) Найдите производителя, выпускающего ПК, но не ПК-блокноты.
SELECT maker FROM Product
WHERE type = 'PC'
EXCEPT
SELECT maker FROM Product
WHERE type = 'laptop'
* * *
9) Найдите производителей ПК с процессором не менее 450 Мгц. Вывести: Maker
SELECT maker FROM PC
JOIN Product
ON PC.model = Product.model
WHERE type = 'PC' AND speed >= 450
GROUP BY maker
* * *
10) Найдите модели принтеров, имеющих самую высокую цену. Вывести: model, price
SELECT model, price FROM Printer
WHERe price = (
SELECT MAX(price) FROM Printer
)
* * *
11) Найдите среднюю скорость ПК.
SELECT AVG(speed) FROM PC
* * *
12) Найдите среднюю скорость ПК-блокнотов, цена которых превышает 1000 дол.
SELECT AVG(speed) AS Avg_speed FROM Laptop
WHERE price > 1000
* * *
13) Найдите среднюю скорость ПК, выпущенных производителем A.
SELECT AVG(speed) AS Avg_speed
FROM PC
JOIN Product
ON Product.model = PC.model
WHERE maker = 'A'
* * *
14) Найдите класс, имя и страну для кораблей из таблицы Ships, имеющих не менее 10 орудий.
SELECT Ships.class, Ships.name, country
FROM Ships
JOIN Classes
ON Classes.class = Ships.class
WHERE numGuns >= 10
* * *
15) Найдите размеры жестких дисков, совпадающих у двух и более PC. Вывести: HD
SELECT hd FROM PC
GROUP BY hd
HAVING COUNT(*) >= 2
* * *
16) Найдите пары моделей PC, имеющих одинаковые скорость и RAM. В результате каждая пара указывается только один раз, т.е. (i,j), но не (j,i), Порядок вывода: модель с большим номером, модель с меньшим номером, скорость и RAM.
SELECT DISTINCT pc_1.model, pc_2.model, pc_1.speed, pc_1.ram
FROM PC pc_1, PC pc_2
WHERE pc_1.speed = pc_2.speed
AND pc_1.ram = pc_2.ram
AND pc_1.model > pc_2.model
* * *
17) Найдите модели ПК-блокнотов, скорость которых меньше скорости каждого из ПК.
Вывести: type, model, speed
SELECT DISTINCT type, Laptop.model, speed
FROM Laptop
JOIN Product
ON Product.model = Laptop.model
WHERE speed < ALL (
SELECT speed FROM PC
)
* * *
18) Найдите производителей самых дешевых цветных принтеров. Вывести: maker, price
SELECT maker, price
FROM Printer
JOIN Product
ON Product.model = Printer.model
WHERE price = (
SELECT MIN(price) AS price
FROM Printer
WHERE color = 'y'
)
AND color = 'y'
GROUP BY maker, price
* * *
19) Для каждого производителя, имеющего модели в таблице Laptop, найдите средний размер экрана выпускаемых им ПК-блокнотов. Вывести: maker, средний размер экрана.
SELECT maker, AVG(screen) AS avg_screen
FROM Laptop
JOIN Product
ON Product.model = Laptop.model
GROUP BY maker
* * *
20) Найдите производителей, выпускающих по меньшей мере три различных модели ПК. Вывести: Maker, число моделей ПК.
SELECT maker, COUNT(model) AS model
FROM Product
WHERE type = 'pc'
GROUP BY maker
HAVING COUNT(model) >= 3
* * *
