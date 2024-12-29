#Q1: Who is the senior most employee based on job title?

SELECT * FROM employee
ORDER BY levels DESC
LIMIT 1

#Q2:  Which countries have the most invoices?

SELECT COUNT(*) as c, billing_country
FROM invoice
GROUP BY billing_country
ORDER BY c DESC

#Q3: What are the top 3 values of total invoice?

SELECT * FROM invoice
ORDER BY total DESC
LIMIT 3

#Q4: Which city has the best customers? We would like to throw a promotional Music Festival in the city we made the most money. 

SELECT SUM(total) as invoice_total, billing_city
FROM invoice
GROUP BY billing_city
ORDER BY invoice_total DESC

#Q5: Who is the best customer? The customer who has spent the most money will be declared the best customer.

SELECT customer.customer_id, customer.first_name, customer.last_name, SUM(invoice.total) as total
FROM customer
JOIN invoice ON customer.customer_id = invoice.customer_id
GROUP BY customer.customer_id
ORDER BY total DESC
limit 1

#Q6: Write query to return the email, first name, last name, & Genre of all Rock Music listeners.

SELECT DISTINCT email, first_name, last_name
FROM customer
JOIN invoice ON customer.customer_id = invoice.customer_id
JOIN invoiceline ON invoice.invoice_id = invoiceline.invoice_id
WHERE track_id IN(
  SELECT track_id FROM track
  JOIN genre ON track.genre_id = genre.genre_id
  WHERE genre.name LIKE 'Rock'
)
ORDER BY email;
