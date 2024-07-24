/* ==========================
    Count Function
  ===========================*/

-- Quante righe ci sono nella tabella products?
SELECT COUNT(*)
FROM `wisdom_pets.products`;

-- Quante righe ci sono nella tabella products?
-- Usiamo un alias per rinominare l'output di COUNT(*)
SELECT
  COUNT(*) AS row_count
FROM `wisdom_pets.products`;

-- Conta i valori non nulli di rating
SELECT
  COUNT(rating) AS rating_count
FROM `wisdom_pets.products`;

-- Controlla i record NULL per rating
SELECT
  product_id,
  product_name,
  rating,
FROM `wisdom_pets.products`
WHERE rating IS NULL;

-- Quanti valori unici di rating ci sono?
SELECT
  COUNT(DISTINCT rating) AS unique_ratings,
FROM `wisdom_pets.products`;

-- COUNT DISTINCT ignora i NULL
SELECT
  product_id,
  product_name,
  rating,
FROM `wisdom_pets.products`
ORDER BY rating;

-- Sono possibili anche funzioni COUNT multiple
SELECT
  COUNT(*) AS record_count,
  COUNT(rating) AS rating_count,
  COUNT(DISTINCT category_name) AS unique_category_count,
  COUNT(DISTINCT rating) AS unique_rating_count,
FROM `wisdom_pets.products`;

-- Le funzioni COUNT possono essere usate anche con la clausola WHERE
SELECT
  COUNT(*) AS record_count,
  COUNT(rating) AS rating_count,
  COUNT(DISTINCT category_name) AS unique_category_count,
  COUNT(DISTINCT rating) AS unique_rating_count,
FROM `wisdom_pets.products`
WHERE retail_price <= 6;

-- La clausola WHERE viene eseguita per prima
-- Poi vengono eseguite le funzioni COUNT
-- Questo è usato per mostrare l'ordine delle operazioni SQL
SELECT *
FROM `wisdom_pets.products`
WHERE retail_price <= 6;

-- Quanti prodotti sono nella categoria Care con un prezzo inferiore a $9?
SELECT
  COUNT(*) AS product_counts,
FROM `wisdom_pets.products`
WHERE
  category_name = 'Care'
  AND retail_price < 9;