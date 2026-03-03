USE bank;
SELECT * 
FROM client;

Select client_id
FROM client
WHERE district_id = 1
ORDER BY client_id
LIMIT 5;

SELECT client_id
FROM client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;	

SELECT * FROM loan;

SELECT amount 
FROM loan
ORDER BY amount ASC
LIMIT 3;

SELECT DISTINCT status 
FROM loan
ORDER BY status ASC;

SELECT  loan_id
FROM loan
ORDER BY payments DESC
LIMIT 1;

SELECT account_id, amount 
FROM loan
ORDER BY account_id ASC
LIMIT 5;

SELECT * FROM `order` ;

SELECT DISTINCT k_symbol
from `order`
ORDER BY k_symbol ASC;

SELECT DISTINCT account_id
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560
ORDER BY account_id ASC;

SELECT amount
from `order`
WHERE account_to = 30067122;

SELECT * FROM TRANS;

SELECT trans_id, `date`, `type`, amount
FROM trans 
WHERE account_id = 793
ORDER BY `date` DESC
LIMIT 10;

SELECT * FROM client;

SELECT DISTINCT district_id, COUNT(*) AS clients
FROM client 
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id ASC;

SELECT * FROM CARD;

SELECT `type`, COUNT(*) AS total
from card
GROUP BY `type`
ORDER BY total DESC;

SELECT * FROM loan;

SELECT account_id,  SUM(amount) AS loan_total
from loan
GROUP BY account_id
ORDER BY loan_total DESC
LIMIT 10;

SELECT `date`, COUNT(loan_id) AS num_of_loans
from loan
WHERE `date` < 930907
GROUP BY `date`
ORDER BY `date` DESC;

SELECT date, duration, COUNT(LOAN_ID) AS num_of_loans
FROM loan
WHERE date BETWEEN 971201 AND 971231
GROUP BY date, duration
ORDER BY date, duration ASC;

SELECT * FROM trans;

SELECT account_id, type, SUM(amount) AS total_amount 
from trans
WHERE account_id = 396 
GROUP BY  type
ORDER BY type ASC;

