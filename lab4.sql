mysql> SELECT UPPER(name) AS name_upper 
    -> FROM cities 
    -> ORDER BY name 
    -> LIMIT 5 OFFSET 5;
+--------------------+
| name_upper         |
+--------------------+
| ГОРЛІВКА           |
| ДНІПРО             |
| ДОНЕЦЬК            |
| ДРОГОБИЧ           |
| ЄВПАТОРІЯ          |
+--------------------+
5 rows in set (0.00 sec)

mysql> SELECT name, LENGTH(name) AS name_length 
    -> FROM cities 
    -> WHERE LENGTH(name) NOT IN (8, 9, 10);
+------------------------------------------+-------------+
| name                                     | name_length |
+------------------------------------------+-------------+
| Харків                                   |          12 |
| Дніпро                                   |          12 |
| Донецьк                                  |          14 |
| Запоріжжя                                |          18 |
| Кривий Ріг                               |          19 |
| Миколаїв                                 |          16 |
| Маріуполь                                |          18 |
| Луганськ                                 |          16 |
| Севастополь                              |          22 |
| Вінниця                                  |          14 |
| Макіївка                                 |          16 |
| Сімферополь                              |          22 |
| Херсон                                   |          12 |
| Полтава                                  |          14 |
| Чернігів                                 |          16 |
| Черкаси                                  |          14 |
| Житомир                                  |          14 |
| Хмельницький                             |          24 |
| Чернівці                                 |          16 |
| Горлівка                                 |          16 |
| Кам'янське                               |          19 |
| Кропивницький                            |          26 |
| Івано-Франківськ                         |          31 |
| Кременчук                                |          18 |
| Тернопіль                                |          18 |
| Біла Церква                              |          21 |
| Краматорськ                              |          22 |
| Мелітополь                               |          20 |
| Сєвєродонецьк                            |          26 |
| Хрустальний                              |          22 |
| Нікополь                                 |          16 |
| Бердянськ                                |          18 |
| Слов'янськ                               |          19 |
| Ужгород                                  |          14 |
| Алчевськ                                 |          16 |
| Павлоград                                |          18 |
| Євпаторія                                |          18 |
| Лисичанськ                               |          20 |
| Кам'янець-Подільський                    |          40 |
| Бровари                                  |          14 |
| Дрогобич                                 |          16 |
| Кадіївка                                 |          16 |
| Конотоп                                  |          14 |
+------------------------------------------+-------------+
43 rows in set (0.00 sec)

mysql> SELECT region, SUM(population) AS total_population 
    -> FROM cities 
    -> WHERE region IN ('C', 'S') 
    -> GROUP BY region;
+--------+------------------+
| region | total_population |
+--------+------------------+
| S      |          4177039 |
| C      |          2086035 |
+--------+------------------+
2 rows in set (0.00 sec)

mysql> SELECT AVG(population) AS average_population 
    -> FROM cities 
    -> WHERE region = 'W';
+--------------------+
| average_population |
+--------------------+
|        260186.4545 |
+--------------------+
1 row in set (0.00 sec)

mysql> SELECT COUNT(*) AS city_count 
    -> FROM cities 
    -> WHERE region = 'E';
+------------+
| city_count |
+------------+
|         17 |
+------------+
1 row in set (0.00 sec)

mysql> Terminal close -- exit!
