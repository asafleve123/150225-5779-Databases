SELECT ID,NAME,LAST_NAME,PHONE_NUMBER FROM 
VISITOR NATURAL JOIN
(SELECT ID FROM VISITOR
MINUS
SELECT VISITOR_ID as ID FROM TICKET)
