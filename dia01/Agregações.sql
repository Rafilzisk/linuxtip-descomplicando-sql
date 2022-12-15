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
      ROUND(AVG(vlPreco), 2) AS avgPreco, --- media da coluna vlPreco (preco médio dos produtos)
      
      ROUND(PERCENTILE(vlPreco, 0.5), 2) AS medianPreco, --- preço mediano
      --INT numero inteiro
      --ROUND arrendondar sintaxe: ROUN((funcao),2) - o "2" é o número de casas. 
      
      MAX(vlPreco) AS maxPreco,
      ROUND(AVG(vlFrete), 2) AS avgFrete,
      MAX(vlFrete) AS vlFrete,
      MIN(vlFrete) AS vlFrete
      

FROM silver_olist.item_pedido




-- COMMAND ----------

SELECT COUNT(*) 
FROM silver_olist.cliente

WHERE descUF = 'MT'
