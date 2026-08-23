SELECT
    CASE
        WHEN Age BETWEEN 18 AND 25 THEN '18-25'
        WHEN Age BETWEEN 26 AND 35 THEN '26-35'
        WHEN Age BETWEEN 36 AND 45 THEN '36-45'
        WHEN Age BETWEEN 46 AND 60 THEN '46-60'
    END AS age_group,
    COUNT(*) AS jumlah_transaksi,
    ROUND(AVG(Ticket_Price), 2) AS avg_price,
    ROUND(100.0 * SAFE_DIVIDE(
        SUM(CASE WHEN Purchase_Again = TRUE THEN 1 ELSE 0 END),
        COUNT(*)
    ), 1) AS retention_rate_pct
FROM `cinema-ticket-506008.ticket.ticket`
GROUP BY age_group
ORDER BY age_group;
