-- Databricks notebook source
SELECT *, 
        CASE WHEN descUF = 'SP' THEN 'paulista' 
        WHEN descUF = 'RJ' THEN 'fluminense'
        WHEN descUF = 'MG' THEN 'mineiro'
        WHEN descUF = 'PR' THEN 'paranaense'
        ELSE 'outros'
        END AS descNacionalidade

FROM silver_olist.cliente






-- COMMAND ----------

SELECT *, 

-- uma coluna 
        CASE WHEN descUF = 'SP' THEN 'paulista' 
          WHEN descUF = 'RJ' THEN 'fluminense'
          WHEN descUF = 'MG' THEN 'mineiro'
          WHEN descUF = 'PR' THEN 'paranaense'
          ELSE 'outros'
        END AS descNacionalidade
        ,
        CASE
        WHEN descCidade LIKE '%sao%' THEN 'Tem são no nome'
        ELSE 'Não tem são no nome'
        END AS descCidadeSao

FROM silver_olist.cliente

-- COMMAND ----------


