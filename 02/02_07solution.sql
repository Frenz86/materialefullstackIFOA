/* ==========================
    Calculation Functions
  ===========================*/

-- Qual è l'intervallo di prezzo di tutti i prodotti?
SELECT
  MIN(retail_price) AS minimum_price,
  MAX(retail_price) AS maximum_price,
FROM `wisdom_pets.products`;

-- Qual è la percentuale media di sconto all'ingrosso?
SELECT
  AVG(wholesale_discount_percentage) AS avg_discount,
FROM `wisdom_pets.products`;

-- Percentuale media di sconto all'ingrosso arrotondata a 2 decimali
SELECT
  ROUND(AVG(wholesale_discount_percentage),2) AS rounded_avg_discount,
FROM `wisdom_pets.products`;

-- I 5 migliori prodotti per prezzo all'ingrosso
SELECT
  product_id,
  product_name,
  retail_price,
  wholesale_discount_percentage,
  ROUND(retail_price * (1 - wholesale_discount_percentage / 100),2) AS wholesale_price,
FROM `wisdom_pets.products`
ORDER BY wholesale_price DESC
LIMIT 5;

-- Calcola le statistiche riassuntive della categoria Supplement
SELECT
  AVG(retail_price) AS average_retail_price,
  STDDEV(retail_price) AS stddev_retail_price,
  COUNT(DISTINCT product_id) AS unique_product_count,
  AVG(rating) AS average_rating,
FROM `wisdom_pets.products`
WHERE category_name = 'Supplement';

-- Qual è la media e la deviazione standard del prezzo al dettaglio per tutti i prodotti Wisdom Pets?
SELECT
  ROUND(AVG(retail_price),2) AS average_retail_price,
  ROUND(STDDEV(retail_price),2) AS std_retail_price,
FROM `wisdom_pets.products`;