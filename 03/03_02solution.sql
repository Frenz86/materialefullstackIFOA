/* ==========================
    Case When Statements
  ===========================*/

-- Assegna un nome di segmento per i prodotti per gatti/cani
SELECT
  product_id,
  product_name,
  CASE
      WHEN product_name LIKE '%Cat%' THEN 'Cat'
      WHEN product_name LIKE '%Dog%' THEN 'Dog'
      ELSE 'Other'
  END AS segment_name
FROM `wisdom_pets.products`
ORDER BY segment_name;

-- Restituisce NULL quando le altre condizioni non sono soddisfatte
SELECT
  product_id,
  product_name,
  CASE
      WHEN product_name LIKE '%Cat%' THEN 'Cat'
      WHEN product_name LIKE '%Dog%' THEN 'Dog'
  END AS segment_name
FROM `wisdom_pets.products`
ORDER BY segment_name NULLS LAST;

-- Quanti prodotti ci sono per ogni segmento?
SELECT
  CASE
      WHEN product_name LIKE '%Cat%' THEN 'Cat'
      WHEN product_name LIKE '%Dog%' THEN 'Dog'
      ELSE 'Other'
  END AS segment_name,
  COUNT(*) AS product_count
FROM `wisdom_pets.products`
GROUP BY segment_name
ORDER BY segment_name;

/* --------------------------------------------------
Quanti prodotti sono tra le fasce di prezzo di:
  $1 a $5
  $5 a $10
  $10 a $25
  $25 +
-------------------------------------------------- */
SELECT
  CASE
    WHEN retail_price BETWEEN 1 AND 5
      THEN '$1 to $5'
    WHEN retail_price > 5 AND retail_price <= 10
      THEN '$5 to $10'
    WHEN retail_price > 10 AND retail_price <= 25
      THEN '$10 to $25'
    WHEN retail_price > 25
      THEN '$25 +'
    ELSE NULL
  END AS price_band,
  COUNT(*) AS product_count
FROM `wisdom_pets.products`
GROUP BY price_band;