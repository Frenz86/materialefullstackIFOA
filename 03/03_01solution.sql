/* ==========================
    Group By
  ===========================*/
  
-- Conta le righe per ogni nome di categoria
SELECT
  category_name,
  COUNT(*) AS record_count,
FROM `wisdom_pets.products`
GROUP BY category_name
ORDER BY category_name;

-- Applica multiple funzioni di calcolo
SELECT
  category_name,
  COUNT(*) AS record_count,
  AVG(retail_price) AS average_retail_price,
  MAX(rating) AS max_rating,
FROM `wisdom_pets.products`
GROUP BY category_name
ORDER BY category_name;


-- Conta i prodotti di categoria sotto i $10
SELECT
  category_name,
  COUNT(*) AS record_count,
FROM `wisdom_pets.products`
WHERE retail_price < 10
GROUP BY category_name
ORDER BY category_name;

-- Conta i prodotti per categoria e livelli di sconto
SELECT
  category_name,
  wholesale_discount_percentage,
  COUNT(*) AS record_count,
FROM `wisdom_pets.products`
GROUP BY
  category_name,
  wholesale_discount_percentage
ORDER BY
  category_name,
  wholesale_discount_percentage;

-- Quanti prodotti in ogni categoria hanno un rating maggiore o uguale a 4.5?
SELECT
  category_name,
  COUNT(*) AS product_count,
FROM `wisdom_pets.products`
WHERE rating >= 4.5
GROUP BY category_name;