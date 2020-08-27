SELECT count(*) as AMOUNT, extract(YEAR from DATE_) AS Year from TICKET
GROUP BY extract(YEAR from DATE_)
ORDER BY YEAR
