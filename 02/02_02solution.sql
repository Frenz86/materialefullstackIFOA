/* ======================
    Order By
  =======================*/

-- Esamina ID prodotto, nome e prezzi
SELECT
  product_id,
  product_name,
  retail_price
FROM `wisdom_pets.products`;

-- Ordina i prodotti (ID prodotto, nome, prezzi) dal prezzo più basso al più alto
SELECT
  product_id,
  product_name,
  retail_price
FROM `wisdom_pets.products`
ORDER BY retail_price;

-- Ordina i prodotti (ID prodotto, nome, prezzi) dal prezzo più alto al più basso
SELECT
  product_id,
  product_name,
  retail_price,
FROM `wisdom_pets.products`
ORDER BY retail_price DESC;

-- Ordina i prodotti per categoria dal prezzo più alto al più basso
-- noto anche come ordinamento multilivello
SELECT
  product_id,
  product_name,
  category_name,
  retail_price,
FROM `wisdom_pets.products`
ORDER BY
  category_name,
  retail_price DESC;


-- Quali prodotti di ogni categoria hanno lo sconto più alto?
SELECT
  product_id,
  product_name,
  category_name,
  retail_price,
  wholesale_discount_percentage,
FROM `wisdom_pets.products`
ORDER BY
  category_name,
  wholesale_discount_percentage DESC;