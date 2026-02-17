SELECT 
    token_bought_symbol AS asset, -- Nombre del token (ej: SOL, USDC)
    sum(amount_usd) AS volume_24h
FROM dex_solana.trades
WHERE block_time >= current_date - interval '1' day
    AND amount_usd > 100
    AND token_bought_symbol IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC
LIMIT 10
