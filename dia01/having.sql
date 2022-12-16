-- Databricks notebook source
--- Apenas sudeste com + de 100 vendedores

SELECT descUF,
      COUNT (idVendedor) AS qtdVendedorUF

FROM silver_olist.vendedor

WHERE descUF IN ('SP', 'MG', 'RJ', 'ES')

GROUP BY descUF

HAVING qtdVendedorUF >= 100

ORDER BY qtdVendedorUF DESC


