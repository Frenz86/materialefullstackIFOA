/* ==========================
  Fuzzy String Matching
  =========================== */

-- Quali prodotti contengono la parola "Dog"?
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

-- Questo corrisponde ai prodotti che iniziano con Dog
-- Questa query restituirà 0 record
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

-- Questo corrisponde ai prodotti che finiscono con Dog
-- Questa query restituirà 0 record
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

-- Questo corrisponde esattamente solo a Dog
-- Questa query restituirà 0 record
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

-- La distinzione tra maiuscole e minuscole è importante per LIKE corrisponde esattamente solo a dog
-- Questa query restituirà 0 record
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

-- Possiamo usare UPPER e usare tutte maiuscole DOG
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

-- Possiamo usare LOWER e usare tutte minuscole corrisponde esattamente solo a dog
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx

-- Possiamo usare LIKE ANY simile a IN Dog e Cat
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx


-- Trova tutti i prodotti che hanno "Teeth" o "Tooth" e qualsiasi prodotto relativo a "Coat"
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
xxxxxxxxxxxxxxxxxxxxxxxxxxxxxx