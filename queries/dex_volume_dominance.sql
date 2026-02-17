SELECT 
    date_trunc('day', block_time) AS date,
    project AS dex_name,
    sum(amount_usd) AS daily_volume_usd
FROM dex_solana.trades
WHERE block_time >= current_date - interval '30' day
    AND amount_usd > 0
GROUP BY 1, 2
ORDER BY 1 DESC, 3 DESC
