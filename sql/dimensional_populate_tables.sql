INSERT INTO products_dimension VALUES(1, 'Bicicleta Max 3', 995.99);
INSERT INTO products_dimension VALUES(2, 'Patinete Estrela', 195.99);
INSERT INTO products_dimension VALUES(3, 'Skate Bob Burnquist', 295.99);
INSERT INTO products_dimension VALUES(4, 'Conjunto de Meias Esportivas', 25.99);
INSERT INTO products_dimension VALUES(5, 'Bola de Futebol FIFA', 125.99);
INSERT INTO products_dimension VALUES(6, 'Tenis Nike Topster Triple', 325.99);

INSERT INTO users_dimension VALUES (0, 09332398749,'matheus@hotmail.com', 'pass4321', '(11) 99998-9745', 4234423444444357);
INSERT INTO users_dimension VALUES (1, 08332398779,'vitor@hotmail.com', 'pass4321', '(11) 89998-9745', 2234423444444357);
INSERT INTO users_dimension VALUES (2, 07332398779,'ana@hotmail.com', 'pass4321', '(11) 79998-9745', 3234423444444357);
INSERT INTO users_dimension VALUES (3, 17332398779,'aninha@hotmail.com', 'pass4321', '(81) 99998-9745', 5234423444444357);

INSERT INTO adresses_dimension VALUES(0, 0, 'Avenida Paulista, 119', 'São Paulo', 'SP');
INSERT INTO adresses_dimension VALUES(1, 0, 'Rua Brigadeiro Farias, 419', 'São Paulo', 'SP');
INSERT INTO adresses_dimension VALUES(2, 1, 'Rua Santa Efigênia, 227', 'São Paulo', 'SP');
INSERT INTO adresses_dimension VALUES(3, 1, 'Avenida Beira Mar, 12', 'Porto de Galinhas', 'PE');
INSERT INTO adresses_dimension VALUES(4, 3, 'Avenida Beira Rio, 420', 'Recife', 'PE');
INSERT INTO adresses_dimension VALUES(5, 2, 'Rua Duque de Caxias, 420', 'São Paulo', 'SP');

INSERT INTO purchases_fact VALUES(0,1,0,0,1,'2020-12-29 04:05:06');
INSERT INTO purchases_fact VALUES(0,2,0,0,1,'2020-12-29 04:05:06');
INSERT INTO purchases_fact VALUES(1,3,0,0,2,'2021-03-14 12:30:47');
INSERT INTO purchases_fact VALUES(2,5,0,1,1,'2020-03-19 14:30:47');
INSERT INTO purchases_fact VALUES(3,4,1,2,2,'2019-09-09 19:30:47');
INSERT INTO purchases_fact VALUES(3,2,1,2,1,'2019-09-09 19:30:47');
INSERT INTO purchases_fact VALUES(4,5,1,2,1,'2019-09-09 19:30:47');
INSERT INTO purchases_fact VALUES(5,1,1,3,1,'2018-09-09 19:30:47');
INSERT INTO purchases_fact VALUES(5,5,1,3,1,'2018-09-09 19:30:47');
INSERT INTO purchases_fact VALUES(6,3,3,4,1,'2021-04-09 19:30:47');
INSERT INTO purchases_fact VALUES(6,5,3,4,1,'2021-04-09 19:30:47');
INSERT INTO purchases_fact VALUES(7,3,2,5,1,'2020-11-09 19:30:47');
INSERT INTO purchases_fact VALUES(8,3,0,1,1,'2020-05-09 19:30:47');
INSERT INTO purchases_fact VALUES(8,4,0,1,2,'2020-05-09 19:30:47');
INSERT INTO purchases_fact VALUES(9,3,1,2,1,'2021-05-19 19:30:47');
INSERT INTO purchases_fact VALUES(9,5,1,2,1,'2021-05-19 19:30:47');
INSERT INTO purchases_fact VALUES(10,3,1,3,1,'2021-05-29 19:30:47');
INSERT INTO purchases_fact VALUES(10,1,1,3,1,'2021-05-29 19:30:47');
INSERT INTO purchases_fact VALUES(11,1,0,0,3,'2021-05-29 19:30:47');
INSERT INTO purchases_fact VALUES(11,2,0,0,1,'2021-05-29 19:30:47');
INSERT INTO purchases_fact VALUES(11,4,0,0,1,'2021-05-29 19:30:47');
INSERT INTO purchases_fact VALUES(11,5,0,0,2,'2021-05-29 19:30:47');
INSERT INTO purchases_fact VALUES(11,6,0,0,2,'2021-05-29 19:30:47');

INSERT INTO carts_fact VALUES (1,1,1);
INSERT INTO carts_fact VALUES (2,2,1);
INSERT INTO carts_fact VALUES (3,1,1);
INSERT INTO carts_fact VALUES (0,4,1);
