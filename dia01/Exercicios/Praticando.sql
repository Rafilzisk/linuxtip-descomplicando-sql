-- Databricks notebook source
-- DBTITLE 1,Exercício 01
-- 01 Selecione todos os clientes paulistanos

SELECT *
FROM silver_olist.cliente

WHERE descCidade = 'sao paulo'



-- COMMAND ----------

-- DBTITLE 1,Exercício 02
-- 02 selecione todos os clientes paulista

SELECT *
FROM silver_olist.cliente

WHERE descUF = 'SP'

-- COMMAND ----------

-- DBTITLE 1,Exercício 03
-- 03 SELECIONE TODOS VENDEDORES CARIOCAS E PAULISTAS

SELECT *
FROM silver_olist.vendedor

WHERE descCidade = 'rio de janeiro'
OR descUF = 'SP'



-- COMMAND ----------

-- DBTITLE 1,Exercício 04
-- 04 selecione produtos de perfumaria e bebes com altura maior que 5cm

SELECT *
FROM silver_olist.produto

WHERE descCategoria IN ('perfumaria', 'bebes') 
AND vlAlturaCm > '5'

