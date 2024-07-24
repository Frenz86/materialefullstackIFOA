/* ==========================
    Wisdom Pets Quiz 2
  =========================== */

-- Domanda 1
-- Quali sono i 3 migliori ID prodotto in base alle vendite totali (campo total_amount)?
SELECT
  product_id,
  SUM(total_amount) AS total_sales,
FROM `wisdom_pets.sales`
GROUP BY product_id
ORDER BY total_sales DESC
LIMIT 3;

-- Domanda 2
-- Qual è il totale delle vendite e la ripartizione percentuale per tipo di transazione?
WITH cte_base_data AS (
SELECT
  transaction_type,
  SUM(total_amount) AS total_sales,
  SUM(SUM(total_amount)) OVER () AS overall_sales
FROM `wisdom_pets.sales`
GROUP BY transaction_type
)
SELECT
  transaction_type,
  total_sales,
  ROUND(total_sales / overall_sales,2) AS percentage_breakdown,
FROM cte_base_data;