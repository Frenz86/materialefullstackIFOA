/* ==========================
    Countif Function
  =========================== */

-- Assegna un flag booleano 1/0 per i prodotti per cani
SELECT
    product_name,
    CASE
        WHEN product_name LIKE '%Dog%'
            THEN 1
        ELSE 0
    END AS dog_product_flag
FROM `wisdom_pets.products`
ORDER BY dog_product_flag DESC;

-- Somma il flag booleano 1/0 per il conteggio dei prodotti per cani
SELECT
    SUM(
        CASE
            WHEN product_name LIKE '%Dog%'
                THEN 1
            ELSE 0
        END
    ) AS dog_product_count
FROM `wisdom_pets.products`;

-- Conta i prodotti per cani per ogni categoria
SELECT
    category_name,
    SUM(
        CASE
            WHEN product_name LIKE '%Dog%'
                THEN 1
            ELSE 0
        END
    ) AS dog_product_count
FROM `wisdom_pets.products`
GROUP BY category_name
ORDER BY dog_product_count DESC;

-- COUNTIF dei prodotti per cani per ogni categoria
SELECT
    category_name,
    COUNTIF(product_name LIKE '%Dog%') AS dog_product_count
FROM `wisdom_pets.products`
GROUP BY category_name
ORDER BY dog_product_count DESC;

-- Conta sia i prodotti per Cani che per Gatti per ogni categoria
SELECT
    category_name,
    COUNTIF(product_name LIKE '%Dog%') AS dog_product_count,
    COUNTIF(product_name LIKE '%Cat%') AS cat_product_count
FROM `wisdom_pets.products`
GROUP BY category_name
ORDER BY category_name;

-- Trova la valutazione media della categoria dei prodotti per Cani e Gatti
SELECT
    category_name,
    AVG(
        CASE
            WHEN product_name LIKE '%Dog%'
                THEN rating
            ELSE NULL
        END
    ) AS avg_dog_rating,
    AVG(
        CASE
            WHEN product_name LIKE '%Cat%'
                THEN rating
            ELSE NULL
        END
    ) AS avg_cat_rating
FROM `wisdom_pets.products`
GROUP BY category_name
ORDER BY category_name;

-- Per i calcoli aggregati, non usiamo un flag 1/0
SELECT
    category_name,
    AVG(
        CASE
            WHEN product_name LIKE '%Dog%'
                THEN rating
            ELSE NULL
        END
    ) AS avg_dog_rating,
    AVG(
        CASE
            WHEN product_name LIKE '%Cat%'
                THEN rating
            ELSE NULL
        END
    ) AS avg_cat_rating
FROM `wisdom_pets.products`
GROUP BY category_name
ORDER BY category_name;

-- Mostra la valutazione media della categoria e il conteggio dei prodotti per Cani/Gatti
-- Rimuovi i prodotti che hanno una valutazione NULL dal conteggio
SELECT
    category_name,
    AVG(
        CASE
            WHEN product_name LIKE '%Dog%'
                THEN rating
            ELSE NULL
        END
    ) AS avg_dog_rating,
    AVG(
        CASE
            WHEN product_name LIKE '%Cat%'
                THEN rating
            ELSE NULL
        END
    ) AS avg_cat_rating,
    COUNTIF(product_name LIKE '%Dog%') AS dog_product_count,
    COUNTIF(product_name LIKE '%Cat%') AS cat_product_count
FROM `wisdom_pets.products`
WHERE rating IS NOT NULL
GROUP BY category_name
ORDER BY category_name;

/* -----------------------------------------------------
Per ogni categoria - calcola le seguenti metriche:
  Quanti prodotti per cani a 5 stelle ci sono?
  Quanti prodotti per gatti a 4 stelle ci sono?
----------------------------------------------------- */
SELECT
  category_name,
  COUNTIF(rating = 5 AND product_name LIKE '%Dog%') AS dog_product_5_star,
  COUNTIF(rating = 4 AND product_name LIKE '%Cat%') AS cat_product_4_star,
FROM `wisdom_pets.products`
GROUP BY category_name;