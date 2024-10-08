mysql> 
mysql> SELECT name 
    -> FROM cities 
    -> WHERE name LIKE '%ськ';
+---------------------------------+
| name                            |
+---------------------------------+
| Луганськ                        |
| Івано-Франківськ                |
| Краматорськ                     |
| Бердянськ                       |
| Слов'янськ                      |
| Алчевськ                        |
| Лисичанськ                      |
+---------------------------------+
7 rows in set (0.00 sec)

mysql> SELECT name 
    -> FROM cities 
    -> WHERE name LIKE '%донец%';
+----------------------------+
| name                       |
+----------------------------+
| Донецьк                    |
| Сєвєродонецьк              |
+----------------------------+
2 rows in set (0.00 sec)

mysql> SELECT CONCAT(name, ' (', region, ')') AS city_region 
    -> FROM cities 
    -> WHERE population > 100000 
    -> ORDER BY name;
+----------------------------------------------+
| city_region                                  |
+----------------------------------------------+
| Алчевськ (E)                                 |
| Бердянськ (S)                                |
| Біла Церква (N)                              |
| Бровари (N)                                  |
| Вінниця (W)                                  |
| Горлівка (E)                                 |
| Дніпро (C)                                   |
| Донецьк (E)                                  |
| Євпаторія (S)                                |
| Житомир (N)                                  |
| Запоріжжя (E)                                |
| Івано-Франківськ (W)                         |
| Кам'янець-Подільський (W)                    |
| Кам'янське (C)                               |
| Керч (S)                                     |
| Київ (N)                                     |
| Краматорськ (E)                              |
| Кременчук (C)                                |
| Кривий Ріг (S)                               |
| Кропивницький (C)                            |
| Лисичанськ (E)                               |
| Луганськ (E)                                 |
| Луцьк (W)                                    |
| Львів (W)                                    |
| Макіївка (E)                                 |
| Маріуполь (S)                                |
| Мелітополь (S)                               |
| Миколаїв (S)                                 |
| Нікополь (C)                                 |
| Одеса (S)                                    |
| Павлоград (E)                                |
| Полтава (E)                                  |
| Рівне (W)                                    |
| Севастополь (S)                              |
| Сєвєродонецьк (E)                            |
| Сімферополь (S)                              |
| Слов'янськ (E)                               |
| Суми (E)                                     |
| Тернопіль (W)                                |
| Ужгород (W)                                  |
| Харків (E)                                   |
| Херсон (S)                                   |
| Хмельницький (W)                             |
| Хрустальний (E)                              |
| Черкаси (C)                                  |
| Чернівці (W)                                 |
| Чернігів (N)                                 |
+----------------------------------------------+
47 rows in set (0.00 sec)

mysql> SELECT name, population, 
    ->        (population / 40000000.0 * 100) AS percent_of_total_population 
    -> FROM cities 
    -> ORDER BY population DESC 
    -> LIMIT 10;
+---------------------+------------+-----------------------------+
| name                | population | percent_of_total_population |
+---------------------+------------+-----------------------------+
| Київ                |    2888470 |                      7.2212 |
| Харків              |    1444540 |                      3.6114 |
| Одеса               |    1010000 |                      2.5250 |
| Дніпро              |     984423 |                      2.4611 |
| Донецьк             |     932562 |                      2.3314 |
| Запоріжжя           |     758011 |                      1.8950 |
| Львів               |     728545 |                      1.8214 |
| Кривий Ріг          |     646748 |                      1.6169 |
| Миколаїв            |     494381 |                      1.2360 |
| Маріуполь           |     458533 |                      1.1463 |
+---------------------+------------+-----------------------------+
10 rows in set (0.00 sec)

mysql> SELECT CONCAT(name, ' - ', ROUND((population / 40000000.0 * 100), 2), '%') AS city_population_percentage 
    -> FROM cities 
    -> WHERE (population / 40000000.0) >= 0.001;
+--------------------------------------------------+
| city_population_percentage                       |
+--------------------------------------------------+
| Київ - 7.22%                                     |
| Харків - 3.61%                                   |
| Одеса - 2.53%                                    |
| Дніпро - 2.46%                                   |
| Донецьк - 2.33%                                  |
| Запоріжжя - 1.90%                                |
| Львів - 1.82%                                    |
| Кривий Ріг - 1.62%                               |
| Миколаїв - 1.24%                                 |
| Маріуполь - 1.15%                                |
| Луганськ - 1.04%                                 |
| Севастополь - 1.03%                              |
| Вінниця - 0.93%                                  |
| Макіївка - 0.87%                                 |
| Сімферополь - 0.83%                              |
| Херсон - 0.74%                                   |
| Полтава - 0.74%                                  |
| Чернігів - 0.74%                                 |
| Черкаси - 0.71%                                  |
| Суми - 0.67%                                     |
| Житомир - 0.67%                                  |
| Хмельницький - 0.67%                             |
| Чернівці - 0.66%                                 |
| Горлівка - 0.63%                                 |
| Рівне - 0.62%                                    |
| Кам'янське - 0.60%                               |
| Кропивницький - 0.58%                            |
| Івано-Франківськ - 0.57%                         |
| Кременчук - 0.56%                                |
| Тернопіль - 0.54%                                |
| Луцьк - 0.54%                                    |
| Біла Церква - 0.53%                              |
| Краматорськ - 0.40%                              |
| Мелітополь - 0.39%                               |
| Керч - 0.37%                                     |
| Сєвєродонецьк - 0.33%                            |
| Хрустальний - 0.31%                              |
| Нікополь - 0.30%                                 |
| Бердянськ - 0.29%                                |
| Слов'янськ - 0.29%                               |
| Ужгород - 0.29%                                  |
| Алчевськ - 0.28%                                 |
| Павлоград - 0.28%                                |
| Євпаторія - 0.27%                                |
| Лисичанськ - 0.26%                               |
| Кам'янець-Подільський - 0.25%                    |
| Бровари - 0.25%                                  |
| Дрогобич - 0.25%                                 |
| Кадіївка - 0.23%                                 |
| Конотоп - 0.23%                                  |
+--------------------------------------------------+
50 rows in set (0.00 sec)

mysql> Terminal close -- exit!
