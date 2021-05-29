CREATE TABLE users (
    cpf BIGINT PRIMARY KEY,
    email varchar(50) UNIQUE NOT NULL,
    passphrase VARCHAR (50) NOT NULL,
    telephone VARCHAR(15) UNIQUE NOT NULL,
    cartao BIGINT CHECK (cartao >= 1000000000000000 AND cartao <= 9999999999999999)
);

CREATE TABLE adresses (
    adresses_id INT PRIMARY KEY,
    cpf BIGINT REFERENCES users,
    street VARCHAR(50),
    city VARCHAR(50),
    statee VARCHAR(30),
  	UNIQUE (cpf, street, city, statee)

);

CREATE TABLE products (
    product_id int PRIMARY KEY,
    product_name VARCHAR(50),
    cost FLOAT
);

CREATE TABLE carts (
    cpf BIGINT REFERENCES users,
    product_id INT REFERENCES products,
    amount INT,
    PRIMARY KEY (cpf, product_id)
);

CREATE TABLE purchases(
    purchase_id INT,
    purchase_time TIMESTAMP,
    adresses_id INT REFERENCES adresses,
    PRIMARY KEY (purchase_id)
);


CREATE TABLE products_purchased(
    purchase_id INT REFERENCES purchases,
    product_id INT REFERENCES products,
    amount INT CHECK (amount > 0),
    PRIMARY KEY (purchase_id, product_id)
);