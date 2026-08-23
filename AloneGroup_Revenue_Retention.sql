SELECT
    attendance_type,
    COUNT(*) AS jumlah_transaksi,
    ROUND(AVG(Ticket_Price), 2) AS avg_price,
    ROUND(100.0 * SAFE_DIVIDE(
        SUM(CASE WHEN Purchase_Again = TRUE THEN 1 ELSE 0 END),
        COUNT(*)
    ), 1) AS retention_rate_pct
FROM `cinema-ticket-506008.ticket.ticket`
GROUP BY attendance_type;