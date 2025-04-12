-- List books with authors and languages
SELECT b.title, a.name AS author, bl.language_name
FROM book b
JOIN book_author ba ON b.book_id = ba.book_id
JOIN author a ON ba.author_id = a.author_id
JOIN book_language bl ON b.book_language_id = bl.language_id;

-- Show all orders by a customer and their status
SELECT o.order_id, o.order_date, os.status_name
FROM cust_order o
JOIN order_status os ON o.status_id = os.status_id
WHERE o.customer_id = 1;

-- Analyze orders by country and shipping method
SELECT co.order_id, c.first_name, cn.country_name, sm.shipping_method_name
FROM cust_order co
JOIN customer c ON co.customer_id = c.customer_id
JOIN customer_address ca ON c.customer_id = ca.customer_id
JOIN address a ON ca.address_id = a.address_id
JOIN country cn ON a.country_id = cn.country_id
JOIN shipping_method sm ON co.shipping_method_id = sm.shipping_method_id;