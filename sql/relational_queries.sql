-- Quais são os 5 produtos mais vendidos do mês atual?

SELECT product_name, SUM(amount) as total FROM products_purchased 
JOIN purchases ON purchases.purchase_id = products_purchased.purchase_id
JOIN products ON products.product_id = products_purchased.product_id
WHERE EXTRACT(MONTH FROM purchase_time) = EXTRACT(MONTH FROM (select NOW()))
 	AND (EXTRACT(year FROM purchase_time) = EXTRACT(YEAR FROM (select NOW())))
GROUP BY product_name
ORDER BY total DESC LIMIT 5;


-- Qual é o total vendido por estado?

SELECT statee, SUM(amount*cost)  FROM purchases
JOIN products_purchased ON products_purchased.purchase_id = purchases.purchase_id
JOIN adresses ON adresses.adresses_id = purchases.adresses_id
JOIN products ON products.product_id = products_purchased.product_id
GROUP BY statee


-- Qual é o ticket médio, ou seja, o valor médio das vendas de um período por usuário no ano?
-- OBS: Neste caso eu fiz pra cada ano para cada usuário.

SELECT cpf, year, SUM(total)/COUNT(total) as ticket_medio FROM
  (SELECT cpf,  (EXTRACT(year FROM purchase_time))as year, products_purchased.purchase_id, SUM(amount * cost) as total FROM purchases
  JOIN products_purchased ON products_purchased.purchase_id = purchases.purchase_id
  JOIN adresses ON adresses.adresses_id = purchases.adresses_id
  JOIN products ON products.product_id = products_purchased.product_id
  Group BY (cpf, EXTRACT(year FROM purchase_time), products_purchased.purchase_id)
  ORDER BY (cpf, EXTRACT(year FROM purchase_time), products_purchased.purchase_id )) AS aux_alias
 GROUP BY(cpf, year)
 ORDER BY(cpf, year)