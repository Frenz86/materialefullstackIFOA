/* ======================
    CONNECTION
  ======================= */

-- Mostra tutte le righe e le colonne dalla tabella products
-- Include l'ID univoco del progetto GCP nella query
SELECT * FROM `intro-to-bq-430118.wisdom_pets.products`;

-- La forma abbreviata (STANDARD) senza l'ID del progetto
SELECT * FROM `wisdom_pets.products`;

-- Includi solo le colonne product_id e product_name
SELECT
  product_id,
  product_name,
FROM `wisdom_pets.products`;

------- DBEAVER cambia un pochino
SELECT
  product_id,
  product_name,
FROM `intro-to-bq-430118`.wisdom_pets.products;

SELECT
  product_id,
  product_name,
FROM `wisdom_pets`.products;