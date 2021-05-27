CREATE TABLE products_dimension (
    product_id int PRIMARY KEY,
    product_name VARCHAR(50),
    cost FLOAT
);

CREATE TABLE users_dimension (
    users_id INT PRIMARY KEY,
    cpf BIGINT,
    email varchar(50) UNIQUE NOT NULL,
    passphrase VARCHAR (50) NOT NULL,
    telephone VARCHAR(15) UNIQUE NOT NULL,
    cartao BIGINT CHECK (cartao >= 1000000000000000 AND cartao <= 9999999999999999)
);


CREATE TABLE adresses_dimension (
    adresses_id INT,
    users_id INT REFERENCES users_dimension,
    street VARCHAR(50),
    city VARCHAR(50),
    statee VARCHAR(30),
  	PRIMARY KEY (adresses_id)
    
);


CREATE TABLE purchases_fact (
    purchase_id INT,
    product_id INT REFERENCES products_dimension,
    users_id INT REFERENCES users_dimension,
    adresses_id INT REFERENCES adresses_dimension,
    amount INT,
    purchase_time TIMESTAMP
);