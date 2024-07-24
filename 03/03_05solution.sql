/* ==========================
    Pivot Function
  ===========================*/

-- Usa GROUP BY per mostrare la valutazione media e i conteggi
SELECT
  category_name,
  CASE
      WHEN product_name LIKE '%Dog%' THEN 'Dog'
      WHEN product_name LIKE '%Cat%' THEN 'Cat'
      ELSE 'Other'
  END AS segment_name,
  AVG(rating) AS avg_rating,
  COUNT(*) AS product_count
FROM `wisdom_pets.products`
WHERE rating IS NOT NULL
GROUP BY
  category_name,
  segment_name
ORDER BY
  category_name,
  segment_name;

-- Implementa CTE con il dataset GROUP BY
WITH cte_pivot_data AS (
SELECT
  category_name,
  CASE
      WHEN product_name LIKE '%Dog%' THEN 'Dog'
      WHEN product_name LIKE '%Cat%' THEN 'Cat'
      ELSE 'Other'
  END AS segment_name,
  AVG(rating) AS avg_rating,
  COUNT(*) AS product_count
FROM `wisdom_pets.products`
GROUP BY
  category_name,
  segment_name
ORDER BY
  category_name,
  segment_name
)
SELECT * FROM cte_pivot_data;

-- Implementa l'operatore PIVOT per convertire righe in colonne
WITH cte_pivot_data AS (
SELECT
  category_name,
  CASE
      WHEN product_name LIKE '%Dog%' THEN 'Dog'
      WHEN product_name LIKE '%Cat%' THEN 'Cat'
      ELSE 'Other'
  END AS segment_name,
  AVG(rating) AS avg_rating,
  COUNT(*) AS product_count
FROM `wisdom_pets.products`
GROUP BY
  category_name,
  segment_name
ORDER BY
  category_name,
  segment_name
)
SELECT * FROM cte_pivot_data
PIVOT(
    MAX(avg_rating) AS avg_rating,
    MAX(product_count) AS product_count
    FOR LOWER(segment_name) IN (
        'dog', 'cat', 'other'
    )
);

-- Implementa PIVOT usando MAX CASE WHEN
WITH cte_pivot_data AS (
SELECT
  category_name,
  CASE
      WHEN product_name LIKE '%Dog%' THEN 'Dog'
      WHEN product_name LIKE '%Cat%' THEN 'Cat'
      ELSE 'Other'
  END AS segment_name,
  AVG(rating) AS avg_rating,
  COUNT(*) AS product_count
FROM `wisdom_pets.products`
GROUP BY
  category_name,
  segment_name
ORDER BY
  category_name,
  segment_name
)
SELECT
  category_name,
  MAX(CASE WHEN segment_name = 'Dog' THEN avg_rating END) AS avg_rating_dog,
  MAX(CASE WHEN segment_name = 'Dog' THEN product_count END) AS product_count_dog,
  MAX(CASE WHEN segment_name = 'Cat' THEN avg_rating END) AS avg_rating_cat,
  MAX(CASE WHEN segment_name = 'Cat' THEN product_count END) AS product_count_cat,
  MAX(CASE WHEN segment_name = 'Other' THEN avg_rating END) AS avg_rating_other,
  MAX(CASE WHEN segment_name = 'Other' THEN product_count END) AS product_count_other,
FROM cte_pivot_data
GROUP BY category_name;