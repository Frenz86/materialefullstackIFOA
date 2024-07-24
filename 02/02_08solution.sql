/* ==========================
    Wisdom Pets Quiz 1
  =========================== */

-- Domanda 1
-- Mostra i prodotti principali con ID, nome, prezzo al dettaglio e categoria.
-- Ordina l'output dal prezzo più basso al più alto.
SELECT
  product_id,
  product_name,
  retail_price,
  category_name,
FROM `wisdom_pets.products`
ORDER BY retail_price;

-- Domanda 2
-- Quanti prodotti di integratori per cani sono disponibili?
-- Mostra il prezzo medio al dettaglio e la valutazione arrotondata alle 2 cifre decimali più vicine.
SELECT
  COUNT(*) AS product_count,
  ROUND(AVG(retail_price),2) AS avg_retail_price,
  ROUND(AVG(rating),2) AS avg_rating,
FROM `wisdom_pets.products`
WHERE
  category_name = 'Supplement'
  AND product_name LIKE '%Dog%';

-- Domanda 3
-- Calcola il prezzo all'ingrosso utilizzando la percentuale di sconto.
-- Ordina l'output dall'importo di sconto più alto al più basso.
SELECT
  product_id,
  product_name,
  retail_price,
  wholesale_discount_percentage,
  retail_price * (1 - wholesale_discount_percentage / 100) AS wholesale_price,
  retail_price * ( wholesale_discount_percentage / 100 ) AS discount_amount,
FROM `wisdom_pets.products`
ORDER BY discount_amount DESC;

------------------------------------------------------------------------------------
WITH price_calculations AS (
  SELECT
    wholesale_discount_percentage,
    retail_price,
    retail_price * (1 - wholesale_discount_percentage / 100) AS wholesale_price,
    retail_price * ( wholesale_discount_percentage / 100 ) AS discount_amount
  FROM `wisdom_pets.products`)

SELECT 
  *,
  retail_price - wholesale_price AS price_difference
FROM price_calculations;