
--film tablosunda film uzunluğu length sütununda gösterilmektedir. Uzunluğu ortalama film uzunluğundan fazla kaç tane film vardır?
--SELECT COUNT(*) FROM film 
--WHERE LENGTH >
--(SELECT AVG(length) FROM film);

--film tablosunda en yüksek rental_rate değerine sahip kaç tane film vardır?

--SELECT COUNT(*) FROM film
--WHERE rental_rate = 
--(SELECT MAX(rental_rate)FROM film);



--film tablosunda en düşük rental_rate ve en düşün replacement_cost değerlerine sahip filmleri sıralayınız.
--SELECT title FROM film WHERE rental_rate = (SELECT MIN(rental_rate) FROM film)
--AND replacement_cost = (SELECT MIN(replacement_cost) FROM film);

--SELECT first_name, last_name FROM customer
--WHERE customer_id = ANY
--
--SELECT DISTINCT(customer_id) FROM payment;

--SELECT first_name,last_name FROM customer  


--payment tablosunda en fazla sayıda alışveriş yapan müşterileri(customer) sıralayınız.
SELECT COUNT(customer_id) as miktar, customer_id FROM payment
GROUP BY customer_id ORDER BY miktar DESC;



