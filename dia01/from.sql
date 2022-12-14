-- Databricks notebook source
SELECT
  idPedido,
  descSituacao
FROM
  silver_olist.pedido
LIMIT
  5 -- leia-se: selecione as colunas idPedido e descSituacao da tabela silver_olist.pedido

-- COMMAND ----------

SELECT idPedido, 
       descSituacao

FROM silver_olist.pedido

-- leia-se: selecione as colunas idPedido e descSituacao da tabela silver_olist.pedido

-- COMMAND ----------

SELECT * FROM silver_olist.pedido

-- leia-se: selecione TUDO da tabela silver_olist.pedido 

-- COMMAND ----------

SELECT *,
  DATEDIFF(dtEstimativaEntrega, dtEntregue) AS qtdDiasPromessaEntrega

FROM silver_olist.pedido

