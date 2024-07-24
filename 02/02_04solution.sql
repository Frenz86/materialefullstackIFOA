/* ==========================
    Operatori IN e BETWEEN
  =========================== */

-- Prodotti che costano meno di $6
SELECT
  product_id,
  product_name,
  retail_price,
FROM `wisdom_pets.products`
WHERE retail_price < 6
ORDER BY retail_price DESC;

-- Prodotti che costano meno o uguale a $6
SELECT
  product_id,
  product_name,
  retail_price,
FROM `wisdom_pets.products`
WHERE retail_price <= 6
ORDER BY retail_price DESC;

-- Prodotti che costano più di $55
SELECT
  product_id,
  product_name,
  retail_price,
FROM `wisdom_pets.products`
WHERE retail_price > 55
ORDER BY retail_price DESC;

-- Prodotti che costano più o uguale a $55
SELECT
  product_id,
  product_name,
  retail_price,
FROM `wisdom_pets.products`
WHERE retail_price >= 55
ORDER BY retail_price DESC;

-- Prodotti con prezzo tra $15 e $65
SELECT
  product_id,
  product_name,
  retail_price,
FROM `wisdom_pets.products`
WHERE retail_price BETWEEN 15 AND 65
ORDER BY retail_price;

-- Mettendo il valore più grande per primo
SELECT
  product_id,
  product_name,
  retail_price,
FROM `wisdom_pets.products`
WHERE retail_price BETWEEN 65 AND 15
ORDER BY retail_price;

-- Prodotti con prezzo non compreso tra $0 e $75
SELECT
  product_id,
  product_name,
  retail_price,
FROM `wisdom_pets.products`
WHERE retail_price NOT BETWEEN 0 and 75
ORDER BY retail_price;

-- Prodotti con specifici ID prodotto
SELECT
  product_id,
  product_name,
  retail_price,
FROM `wisdom_pets.products`
WHERE product_id IN (100013, 100041, 100051)
ORDER BY product_id;

-- Prodotti con specifici nomi
SELECT
  product_id,
  product_name,
  retail_price,
FROM `wisdom_pets.products`
WHERE product_name IN (
  'Strong Joints Cat Supplement',
  'Strong Joints Dog Supplement'
);

-- Prodotti non appartenenti alle categorie care e supplements
SELECT
  product_id,
  product_name,
  category_name,
  retail_price,
FROM `wisdom_pets.products`
WHERE category_name NOT IN (
  'Care',
  'Supplement'
)
ORDER BY category_name;

-- Quali prodotti della categoria Care hanno una percentuale di sconto all'ingrosso tra il 20 e il 30%?
SELECT
  product_id,
  product_name,
  retail_price,
  category_name,
  wholesale_discount_percentage,
FROM `wisdom_pets.products`
WHERE
  category_name = 'Care'
  AND wholesale_discount_percentage BETWEEN 20 AND 30;