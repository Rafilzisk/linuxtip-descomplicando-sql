-- Databricks notebook source
-- 01 Selecione todos os clientes paulistanos

SELECT *
FROM silver_olist.cliente

WHERE descCidade = 'sao paulo'



-- COMMAND ----------

-- 02 selecione todos os clientes paulista

SELECT *
FROM silver_olist.cliente

WHERE descUF = 'SP'

-- COMMAND ----------

-- 03 SELECIONE TODOS VENDEDORES CARIOCAS E PAULISTAS

SELECT *
FROM silver_olist.vendedor

WHERE descCidade = 'rio de janeiro'
OR descUF = 'SP'



-- COMMAND ----------

-- 04 selecione produtos de perfumaria e bebes com altura maior que 5cm

SELECT *
FROM silver_olist.produto

WHERE descCategoria IN ('perfumaria', 'bebes') 
AND vlAlturaCm > '5'

