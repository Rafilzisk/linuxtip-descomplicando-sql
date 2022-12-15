-- Databricks notebook source
SELECT count(*) AS nrLinhasNaoNulas-- linhas não nulas
FROM silver_olist.cliente


-- COMMAND ----------

SELECT 
      COUNT(*) AS nrLinhasNaoNulas, -- linhas não nulas
      COUNT (idCliente) AS nrIdClienteNaoNulo  





FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
      COUNT(*) AS nrLinhasNaoNulas, -- linhas não nulas
      COUNT (idCliente) AS nrIdClienteNaoNulo, -- id de clientes nao nulos
      COUNT (distinct idCliente) AS nrIdClienteDistintos -- id de clientes distintos





FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
      COUNT(*) AS nrLinhasNaoNulas, -- linhas não nulas
      COUNT (idCliente) AS nrIdClienteNaoNulo, -- id de clientes nao nulos
      COUNT (distinct idCliente) AS nrIdClienteDistintos, -- id de clientes distintos
      COUNT (distinct idClienteUnico) AS nrIdClienteUnicoDistintos -- id de clientes unicos distintos




FROM silver_olist.cliente

-- COMMAND ----------

SELECT 
  COUNT(*) AS qtLinhas,
  COUNT (distinct idCliente) AS qtClientes,
  COUNT (distinct idClienteUnico) AS qtClientesUnicos
  
 FROM silver_olist.cliente
WHERE descCidade IN ('presidente prudente','curitiba')




-- COMMAND ----------

SELECT
      AVG(vlPreco) AS avgPreco, --- media da coluna vlPreco (preco médio dos produtos)
      
      PERCENTILE(vlPreco, 0.5) AS medianPreco, --- preço mediano
      
      
      MAX(vlPreco) AS maxPreco,
      AVG(vlFrete) AS avgFrete,
      MAX(vlFrete) AS vlFrete,
      MIN(vlFrete) AS vlFrete
      

FROM silver_olist.item_pedido



