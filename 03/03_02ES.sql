/* ==========================
    Case When Statements
  ===========================*/

-- Scrivi una query che assegni un nome di segmento ai prodotti:
-- 'Cat' per i prodotti con 'Cat' nel nome
-- 'Dog' per i prodotti con 'Dog' nel nome
-- 'Other' per tutti gli altri prodotti
-- Usa la tabella `wisdom_pets.products`.
-- Mostra product_id, product_name e il nuovo segment_name.
-- Ordina i risultati per segment_name.


-- Modifica la query precedente in modo che:
-- - Assegni 'Cat' o 'Dog' come prima
-- - Lasci NULL per tutti gli altri prodotti
-- Ordina i risultati per segment_name, con i NULL alla fine.


-- Conta quanti prodotti ci sono in ciascun segmento (Cat, Dog, Other).
-- Usa la stessa logica di segmentazione dell'esercizio 1.
-- Raggruppa e ordina per segment_name.


-- Conta quanti prodotti rientrano nelle seguenti fasce di prezzo:
--   $1 a $5
--   $5 a $10
--   $10 a $25
--   $25 +
-- Usa la colonna retail_price della tabella `wisdom_pets.products`.
-- Mostra la fascia di prezzo (price_band) e il conteggio dei prodotti.
-- Suggerimento: Usa CASE WHEN per definire le fasce di prezzo.