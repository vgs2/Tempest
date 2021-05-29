CREATE TABLE products_dimension (
    product_id int PRIMARY KEY,
    product_name VARCHAR(50) NOT NULL,
    cost FLOAT NOT NULL
);

CREATE TABLE users_dimension (
    users_id INT PRIMARY KEY,
    cpf BIGINT UNIQUE NOT NULL,
    email varchar(50) UNIQUE NOT NULL,
    passphrase VARCHAR (50) NOT NULL,
    telephone VARCHAR(15) UNIQUE NOT NULL,
    cartao BIGINT CHECK (cartao >= 1000000000000000 AND cartao <= 9999999999999999)
);


CREATE TABLE adresses_dimension (
    adresses_id INT,
    users_id INT REFERENCES users_dimension,
    street VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL,
    statee VARCHAR(30) NOT NULL,
  	PRIMARY KEY (adresses_id)
);


CREATE TABLE purchases_fact (
    purchase_id INT,
    product_id INT REFERENCES products_dimension,
    users_id INT REFERENCES users_dimension,
    adresses_id INT REFERENCES adresses_dimension,
    amount INT NOT NULL,
    purchase_time TIMESTAMP NOT NULL,
    PRIMARY KEY (purchase_id, product_id, users_id)
);

CREATE TABLE carts_fact (
    users_id INT REFERENCES users_dimension,
    product_id INT REFERENCES products_dimension,
    amount INT,
    PRIMARY KEY (users_id, product_id)
);
