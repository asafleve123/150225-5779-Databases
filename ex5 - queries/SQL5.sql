SELECT ID,AMOUNT,NAME,LAST_NAME,PHONE_NUMBER
FROM (SELECT COUNT(*) AS AMOUNT, VISITOR_ID AS ID FROM TICKET GROUP BY VISITOR_ID)
NATURAL JOIN VISITOR
ORDER BY AMOUNT DESC
