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
