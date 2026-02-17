SELECT 
    date_trunc('day', block_time) AS date,
    count(*) AS total_swaps,
    count(DISTINCT tx_id) AS unique_transactions
FROM dex_solana.trades
WHERE block_time >= current_date - interval '30' day
GROUP BY 1
ORDER BY 1 DESC
