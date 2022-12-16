-- Databricks notebook source
SELECT 
  descUF,
  COUNT (DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY descUF


-- COMMAND ----------

--- Primeira forma de Order By

SELECT 
  descUF,
  COUNT (DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY 2

-- COMMAND ----------

--- Segunda forma de Order By

SELECT 
  descUF,
  COUNT (DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY qtClienteEstado

-- COMMAND ----------

--- Terceira forma de Order By

SELECT 
  descUF,
  COUNT (DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY COUNT (DISTINCT idClienteUnico)

-- COMMAND ----------

--- Terceira forma de Order By

SELECT 
  descUF,
  COUNT (DISTINCT idClienteUnico) AS qtClienteEstado

FROM silver_olist.cliente

GROUP BY descUF
ORDER BY COUNT (DISTINCT idClienteUnico)
