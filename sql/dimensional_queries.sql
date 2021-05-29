-- Quais são os 5 produtos mais vendidos do mês atual?
SELECT product_name, SUM(amount) AS total FROM purchases_fact JOIN products_dimension ON purchases_fact.product_id = products_dimension.product_id
WHERE (
    (EXTRACT(MONTH FROM purchase_time) = EXTRACT(MONTH FROM (select NOW())))
    AND (EXTRACT(year FROM purchase_time) = EXTRACT(YEAR FROM (select NOW())))
)
GROUP BY product_name ORDER BY total DESC LIMIT 5



-- ● Qual é o total vendido por estado?
-- o total vendido por PE é 2835
-- SP 7463.76
SELECT statee, sum(amount*cost)FROM purchases_fact 
JOIN products_dimension ON products_dimension.product_id = purchases_fact.product_id
JOIN adresses_dimension ON adresses_dimension.adresses_id = purchases_fact.adresses_id
GROUP BY statee




-- ● Qual é o ticket médio, ou seja, o valor médio das vendas de um período por usuário
-- no ano?
-- para o user 0 em 2021 a media do ticket foi de 2352,945

-- 933 em 2021 deu 822 e 591 duas compras

SELECT users_id, year, SUM(total)/COUNT(total) FROM 
  ( SELECT purchases_fact.users_id,  (EXTRACT(year FROM purchase_time)) as year, purchase_id, SUM(cost * amount) as total FROM purchases_fact 
  JOIN products_dimension ON products_dimension.product_id = purchases_fact.product_id
  JOIN users_dimension ON users_dimension.users_id = purchases_fact.users_id
  GROUP BY (purchases_fact.users_id, year, purchase_id)
  ORDER BY (purchases_fact.users_id, (EXTRACT(year FROM purchase_time)), purchase_id) ) AS cost_per_purchase
GROUP BY (users_id, year)
ORDER BY (users_id, year)