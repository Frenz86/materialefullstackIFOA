/* ==========================
  Fuzzy String Matching
  =========================== */

-- Quali prodotti contengono la parola "Dog"?
SELECT
  product_id,
  product_name,
  retail_price,
FROM `wisdom_pets.products`
WHERE product_name LIKE '%Dog%';

-- Questo corrisponde ai prodotti che iniziano con Dog
-- Questa query restituirà 0 record
SELECT
  product_id,
  product_name,
  retail_price,
FROM `wisdom_pets.products`
WHERE product_name LIKE 'Dog%';

-- Questo corrisponde ai prodotti che finiscono con Dog
-- Questa query restituirà 0 record
SELECT
  product_id,
  product_name,
  retail_price,
FROM `wisdom_pets.products`
WHERE product_name LIKE '%Dog';

-- Questo corrisponde esattamente solo a Dog
-- Questa query restituirà 0 record
SELECT
  product_id,
  product_name,
  retail_price,
FROM `wisdom_pets.products`
WHERE product_name LIKE 'Dog';

-- La distinzione tra maiuscole e minuscole è importante per LIKE
-- Questa query restituirà 0 record
SELECT
  product_id,
  product_name,
  retail_price,
FROM `wisdom_pets.products`
WHERE product_name LIKE '%dog%';

-- Possiamo usare UPPER e usare tutte maiuscole
SELECT
  product_id,
  product_name,
  retail_price,
FROM `wisdom_pets.products`
WHERE UPPER(product_name) LIKE '%DOG%';

-- Possiamo usare LOWER e usare tutte minuscole
SELECT
  product_id,
  product_name,
  retail_price,
FROM `wisdom_pets.products`
WHERE LOWER(product_name) LIKE '%dog%';

-- Possiamo usare LIKE ANY simile a IN
SELECT
  product_id,
  product_name,
  retail_price,
FROM `wisdom_pets.products`
WHERE product_name LIKE ANY ('%Dog%', '%Cat%');


-- Trova tutti i prodotti che hanno "Teeth" o "Tooth" e qualsiasi prodotto relativo a "Coat"
SELECT
  product_id,
  product_name,
  retail_price,
FROM `wisdom_pets.products`
WHERE product_name LIKE ANY ('%Teeth%', '%Tooth%', '%Coat%');