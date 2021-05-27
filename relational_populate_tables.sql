INSERT INTO users VALUES (09332398749,'matheus@hotmail.com', 'pass4321', '(11) 99998-9745', 4234423444444357);
INSERT INTO users VALUES (08332398779,'vitor@hotmail.com', 'pass4321', '(11) 89998-9745', 2234423444444357);
INSERT INTO users VALUES (07332398779,'ana@hotmail.com', 'pass4321', '(11) 79998-9745', 3234423444444357);
INSERT INTO users VALUES (17332398779,'aninha@hotmail.com', 'pass4321', '(81) 99998-9745', 5234423444444357);

INSERT INTO adresses VALUES(0, 09332398749, 'Avenida Paulista, 119', 'São Paulo', 'SP');
INSERT INTO adresses VALUES(1, 09332398749, 'Rua Brigadeiro Farias, 419', 'São Paulo', 'SP');
INSERT INTO adresses VALUES(2, 08332398779, 'Rua Santa Efigênia, 227', 'São Paulo', 'SP');
INSERT INTO adresses VALUES(3, 08332398779, 'Avenida Beira Mar, 12', 'Porto de Galinhas', 'PE');
INSERT INTO adresses VALUES(4, 17332398779, 'Avenida Beira Rio, 420', 'Recife', 'PE');
INSERT INTO adresses VALUES(5, 07332398779, 'Rua Duque de Caxias, 420', 'São Paulo', 'SP');

INSERT INTO products VALUES(1, 'Bicicleta Max 3', 995.99);
INSERT INTO products VALUES(2, 'Patinete Estrela', 195.99);
INSERT INTO products VALUES(3, 'Skate Bob Burnquist', 295.99);
INSERT INTO products VALUES(4, 'Conjunto de Meias Esportivas', 25.99);
INSERT INTO products VALUES(5, 'Bola de Futebol FIFA', 125.99);
INSERT INTO products VALUES(6, 'Tenis Nike Topster Triple', 325.99);

INSERT INTO purchases VALUES(0, '2020-12-29 04:05:06', 0);
INSERT INTO purchases VALUES(1, '2021-03-14 12:30:47', 0);
INSERT INTO purchases VALUES(2, '2020-03-19 14:30:47', 1);
INSERT INTO purchases VALUES(3, '2019-09-09 19:30:47', 2);
INSERT INTO purchases VALUES(4, '2019-09-09 19:30:47', 2);
INSERT INTO purchases VALUES(5, '2018-09-09 19:30:47', 3);
INSERT INTO purchases VALUES(6, '2021-04-09 19:30:47', 4);
INSERT INTO purchases VALUES(7, '2020-11-09 19:30:47', 5);
INSERT INTO purchases VALUES(8, '2020-05-09 19:30:47', 1);
INSERT INTO purchases VALUES(9, '2021-05-19 19:30:47', 2);
INSERT INTO purchases VALUES(10, '2021-05-29 19:30:47', 3);
INSERT INTO purchases VALUES(11, '2021-05-29 19:30:47', 0);

INSERT INTO products_purchased  VALUES(0, 1, 1);
INSERT INTO products_purchased VALUES(0, 2, 1);
INSERT INTO products_purchased VALUES(1, 3, 2);
INSERT INTO products_purchased VALUES(2, 5, 1);
INSERT INTO products_purchased VALUES(3, 4, 2);
INSERT INTO products_purchased VALUES(3, 2, 1);
INSERT INTO products_purchased VALUES(4, 5, 1);
INSERT INTO products_purchased VALUES(5, 1, 1);
INSERT INTO products_purchased VALUES(5, 5, 1);
INSERT INTO products_purchased VALUES(6, 3, 1);
INSERT INTO products_purchased VALUES(6, 2, 1);
INSERT INTO products_purchased VALUES(6, 5, 1);
INSERT INTO products_purchased VALUES(7, 3, 1);
INSERT INTO products_purchased VALUES(8, 3, 1);
INSERT INTO products_purchased VALUES(8, 4, 2);
INSERT INTO products_purchased VALUES(9, 3, 1);
INSERT INTO products_purchased VALUES(9, 5, 1);
INSERT INTO products_purchased VALUES(10, 3, 1);
INSERT INTO products_purchased VALUES(10, 1, 1);
INSERT INTO products_purchased VALUES(11, 1, 3);
INSERT INTO products_purchased VALUES(11, 2, 1);
INSERT INTO products_purchased VALUES(11, 4, 1);
INSERT INTO products_purchased VALUES(11, 5, 2);
INSERT INTO products_purchased VALUES(11, 6, 2);

INSERT INTO carts  VALUES(09332398749, 1, 2);
INSERT INTO carts  VALUES(09332398749, 2, 1);
INSERT INTO carts  VALUES(08332398779, 5, 1);
INSERT INTO carts  VALUES(07332398779, 1, 2);
INSERT INTO carts  VALUES(07332398779, 2, 3);
INSERT INTO carts  VALUES(07332398779, 3, 1);
INSERT INTO carts  VALUES(07332398779, 4, 1);
INSERT INTO carts  VALUES(07332398779, 5, 1);




