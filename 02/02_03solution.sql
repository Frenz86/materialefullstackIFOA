/* ======================
    Where 
  =======================*/

-- Quali prodotti costano esattamente $100?
SELECT
  product_id,
  product_name,
  retail_price,
FROM `wisdom_pets.products`
WHERE retail_price = 100;

-- Corrispondenza esatta della stringa sul nome del prodotto Medicated Dog Shampoo
SELECT
  product_id,
  product_name,
  retail_price,
FROM `wisdom_pets.products`
WHERE product_name = 'Medicated Dog Shampoo';

-- Anche le virgolette doppie funzionano in BigQuery prodotto Medicated Dog Shampoo
SELECT
  product_id,
  product_name,
  retail_price,
FROM `wisdom_pets.products`
WHERE product_name = "Medicated Dog Shampoo";

-- Categoria diversa da supplement
SELECT
  product_id,
  product_name,
  category_name,
FROM `wisdom_pets.products`
WHERE category_name != 'Supplement';

-- Sia != che <> possono essere usati in BQ (Categoria diversa da supplement)
SELECT
  product_id,
  product_name,
  category_name,
FROM `wisdom_pets.products`
WHERE category_name <> 'Supplement';

-- Qual è il prodotto più costoso nella categoria Care?
SELECT
  product_id,
  product_name,
  retail_price,
  category_name,
FROM `wisdom_pets.products`
WHERE category_name = 'Care'
ORDER BY retail_price DESC;