-- Databricks notebook source
-- Qual categoria tem produtos mais vendidos 

SELECT T1.idProduto,
        COUNT(*)


FROM silver_olist.item_pedido AS T1

LEFT JOIN silver_olist.produto AS T2
ON T1.idProduto = T2.idProduto

GROUP BY T1.idProduto
ORDER BY COUNT (*) DESC

-- COMMAND ----------

-- Qual categoria tem produtos mais vendidos 

SELECT T2.descCategoria,
       COUNT(*)


FROM silver_olist.item_pedido AS T1

LEFT JOIN silver_olist.produto AS T2
ON T1.idProduto = T2.idProduto

GROUP BY T2.descCategoria
ORDER BY COUNT(*) DESC


-- COMMAND ----------

-- Qual categoria tem produtos mais caros, em média? 

SELECT T2.descCategoria,
       AVG(T1.vlPreco),


FROM silver_olist.item_pedido AS T1

LEFT JOIN silver_olist.produto AS T2
ON T1.idProduto = T2.idProduto


GROUP BY T2.descCategoria
ORDER BY AVG(T1.vlPreco) DESC


-- COMMAND ----------

SELECT T3.descUF,
      AVG(T1.vlFrete)

FROM silver_olist.item_pedido AS T1
 
LEFT JOIN silver_olist.pedido AS T2
ON T1.idPedido = T2.idPedido

LEFT JOIN silver_olist.cliente AS T3
ON T2.idCLiente = T3.idCliente

GROUP BY T3.descUF
ORDER BY AVG(T1.vlFrete) DESC



-- COMMAND ----------

SELECT * 
FROM silver_olist.cliente
