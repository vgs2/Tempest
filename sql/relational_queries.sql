-- Quais são os 5 produtos mais vendidos do mês atual?

--primeiro vamos selecionar as compras que foram nesse mês
CREATE VIEW month_purchases AS (SELECT purchase_id FROM purchases 
WHERE (
    (EXTRACT(MONTH FROM purchase_time) = EXTRACT(MONTH FROM (select NOW())))
    AND (EXTRACT(year FROM purchase_time) = EXTRACT(YEAR FROM (select NOW())))

));

CREATE VIEW aux_view AS (SELECT product_name, amount from products inner join products_purchased 
ON products.product_id = products_purchased.product_id
WHERE purchase_id IN (SELECT * FROM month_purchases));


SELECT product_name, SUM(amount) as total FROM aux_view GROUP BY product_name order by total desc limit 5;

-- ● Qual é o total vendido por estado?

CREATE VIEW purchases_and_adress AS SELECT statee, purchase_id FROM purchases INNER JOIN adresses ON adresses.adresses_id = purchases.adresses_id;
CREATE VIEW products_state AS SELECT statee, product_id, amount FROM purchases_and_adress INNER JOIN products_purchased ON products_purchased.purchase_id = purchases_and_adress.purchase_id;

SELECT statee, SUM(COST*amount) FROM products_state INNER JOIN products ON products.product_id = products_state.product_id
GROUP BY statee;

-- alternativa sem utilizar VIEW
SELECT SUM(cost * amount) , statee FROM
    (select * from 
        (SELECT * FROM purchases INNER JOIN adresses ON adresses.adresses_id = purchases.adresses_id) AS alias
        JOIN products_purchased ON alias.purchase_id = products_purchased.purchase_id) AS alias2
        JOIN products ON products.product_id = alias2.product_id
GROUP BY statee


-- ● Qual é o ticket médio, ou seja, o valor médio das vendas de um período por usuário
-- no ano?
--
CREATE VIEW aux_products AS SELECT sum(cost * amount)  as total, purchase_id FROM products INNER JOIN products_purchased ON products.product_id = products_purchased.product_id GROUP BY purchase_id;
CREATE VIEW cost_purchase AS SELECT total, purchases.purchase_id, EXTRACT(YEAR FROM purchase_time) as year, adresses_id FROM aux_products INNER JOIN purchases ON purchases.purchase_id = aux_products.purchase_id;
SELECT cpf, year, SUM(total)/COUNT(total) as ticket_medio FROM cost_purchase INNER JOIN adresses on adresses.adresses_id = cost_purchase.adresses_id GROUP BY cpf, year;

