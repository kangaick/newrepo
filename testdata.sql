-- Dumping test data into the database tables.
INSERT INTO book_language (language_name) VALUES 
('English'), ('Spanish'), ('French'), ('German'), ('Mandarin'),
('Japanese'), ('Arabic'), ('Russian'), ('Portuguese'), ('Hindi'),
('Swahili'), ('Italian'), ('Korean'), ('Dutch'), ('Turkish');

INSERT INTO publisher (publisher_name, contact_email) VALUES 
('Penguin Random House', 'info@penguinrandomhouse.com'),
('HarperCollins', 'contact@harpercollins.com'),
('Simon & Schuster', 'support@simonandschuster.com'),
('Hachette Book Group', 'hello@hachettebookgroup.com'),
('Macmillan Publishers', 'info@macmillan.com'),
('Scholastic Inc.', 'sales@scholastic.com'),
('Pearson Education', 'edu@pearson.com'),
('Wiley', 'cs@wiley.com'),
('Springer Nature', 'contact@springernature.com'),
('Oxford University Press', 'support@oup.com'),
('Cambridge University Press', 'press@cambridge.org'),
('Elsevier', 'info@elsevier.com'),
('Bloomsbury Publishing', 'bloomsbury@books.com'),
('Kensington Publishing', 'support@kensingtonbooks.com'),
('Chronicle Books', 'hello@chroniclebooks.com');

INSERT INTO book (title, isbn, publication_year, price, stock_quantity, publisher_id, language_id) VALUES 
('The Silent Patient', '9781250301697', 2019, 19.99, 50, 1, 1),
('Becoming', '9781524763138', 2018, 24.99, 30, 2, 1),
('Educated', '9780399590504', 2018, 18.99, 20, 3, 1),
('Atomic Habits', '9780735211292', 2018, 22.99, 100, 4, 1),
('The Alchemist', '9780061122415', 1993, 16.99, 60, 5, 2),
('Sapiens', '9780062316110', 2015, 21.50, 70, 6, 1),
('La Peste', '9782070360422', 1947, 14.00, 25, 7, 3),
('One Hundred Years of Solitude', '9780060883287', 1967, 18.00, 40, 8, 2),
('Kafka on the Shore', '9781400079278', 2002, 17.95, 35, 9, 6),
('The Little Prince', '9780156012195', 1943, 11.95, 80, 10, 3),
('Norwegian Wood', '9780375704024', 1987, 14.95, 30, 11, 6),
('Crime and Punishment', '9780486415871', 1866, 9.99, 40, 12, 8),
('The Kite Runner', '9781594631931', 2003, 16.00, 45, 13, 1),
('Things Fall Apart', '9780385474542', 1958, 13.99, 25, 14, 11),
('Inferno', '9780307474278', 2013, 15.00, 50, 15, 1);

INSERT INTO author (first_name, last_name, bio) VALUES 
('Alex', 'Michaelides', 'Psychological thriller writer and screenwriter.'),
('Michelle', 'Obama', 'Former First Lady and memoirist.'),
('Tara', 'Westover', 'American memoirist and historian.'),
('James', 'Clear', 'Behavioral science author.'),
('Paulo', 'Coelho', 'Brazilian novelist best known for "The Alchemist".'),
('Yuval', 'Harari', 'Historian and bestselling author of Sapiens.'),
('Albert', 'Camus', 'French philosopher and author.'),
('Gabriel', 'Garcia Marquez', 'Colombian novelist and Nobel laureate.'),
('Haruki', 'Murakami', 'Japanese author of surreal fiction.'),
('Antoine', 'de Saint-Exupéry', 'French writer and aviator.'),
('Fyodor', 'Dostoevsky', 'Russian novelist and philosopher.'),
('Khaled', 'Hosseini', 'Afghan-American novelist.'),
('Chinua', 'Achebe', 'Nigerian author and professor.'),
('Dan', 'Brown', 'American author of thrillers.'),
('Jane', 'Doe', 'Fictional ghostwriter used in multiple publications.');

INSERT INTO book_author (book_id, author_id) VALUES 
(1, 1), (2, 2), (3, 3), (4, 4), (5, 5),
(6, 6), (7, 7), (8, 8), (9, 9), (10, 10),
(11, 9), (12, 11), (13, 12), (14, 13), (15, 14);

 
INSERT INTO country (country_name) VALUES 
('United States'), ('Canada'), ('United Kingdom'), ('Germany'), ('France'),
('Spain'), ('Italy'), ('Brazil'), ('India'), ('Japan'),
('South Korea'), ('Australia'), ('Mexico'), ('Kenya'), ('South Africa');

INSERT INTO address (street, city, state, postal_code, country_id) VALUES 
('123 Maple Street', 'New York', 'NY', '10001', 1),
('456 Queen St', 'Toronto', 'ON', 'M5V2B6', 2),
('789 Abbey Road', 'London', 'England', 'NW8', 3),
('15 Berliner Platz', 'Berlin', 'BE', '10115', 4),
('89 Rue Lafayette', 'Paris', 'Île-de-France', '75009', 5),
('12 Calle Real', 'Madrid', 'Community of Madrid', '28001', 6),
('34 Via Roma', 'Rome', 'Lazio', '00100', 7),
('102 Rua Paulista', 'São Paulo', 'SP', '01310-000', 8),
('55 MG Road', 'Mumbai', 'Maharashtra', '400001', 9),
('3 Chome-2-1 Shibuya', 'Tokyo', 'Tokyo', '150-0002', 10),
('21 Gangnam-daero', 'Seoul', 'Seoul', '06130', 11),
('200 George Street', 'Sydney', 'NSW', '2000', 12),
('Av. Paseo de la Reforma', 'Mexico City', 'CDMX', '06500', 13),
('78 Kenyatta Avenue', 'Nairobi', 'Nairobi', '00100', 14),
('16 Long Street', 'Cape Town', 'Western Cape', '8001', 15);

INSERT INTO address_status (status_name) VALUES 
('Billing'),
('Shipping'),
('Home'),
('Work'),
('Temporary'),
('Permanent'),
('PO Box'),
('Secondary'),
('Main')
;

INSERT INTO customer (first_name, last_name, email, phone) VALUES 
('John', 'Smith', 'john.smith@email.com', '+11234567890'),
('Emma', 'Johnson', 'emma.johnson@email.com', '+11234567891'),
('Liam', 'Williams', 'liam.williams@email.com', '+11234567892'),
('Olivia', 'Brown', 'olivia.brown@email.com', '+11234567893'),
('Noah', 'Jones', 'noah.jones@email.com', '+11234567894'),
('Ava', 'Garcia', 'ava.garcia@email.com', '+11234567895'),
('William', 'Martinez', 'william.martinez@email.com', '+11234567896'),
('Sophia', 'Rodriguez', 'sophia.rodriguez@email.com', '+11234567897'),
('James', 'Hernandez', 'james.hernandez@email.com', '+11234567898'),
('Isabella', 'Lopez', 'isabella.lopez@email.com', '+11234567899'),
('Benjamin', 'Gonzalez', 'benjamin.gonzalez@email.com', '+11234567900'),
('Mia', 'Wilson', 'mia.wilson@email.com', '+11234567901'),
('Lucas', 'Anderson', 'lucas.anderson@email.com', '+11234567902'),
('Charlotte', 'Thomas', 'charlotte.thomas@email.com', '+11234567903'),
('Elijah', 'Taylor', 'elijah.taylor@email.com', '+11234567904');

INSERT INTO customer_address (customer_id, address_id, status_id) VALUES 
(1, 1, 1),
(2, 2, 2),
(3, 3, 1),
(4, 4, 2),
(5, 5, 3),
(6, 6, 4),
(7, 7, 1),
(8, 8, 2),
(9, 9, 1),
(10, 10, 5),
(11, 11, 1),
(12, 12, 2),
(13, 13, 3),
(14, 14, 8),
(15, 15, 2);

INSERT INTO order_status (status_name) VALUES 
('Pending'),
('Processing'),
('Shipped'),
('Delivered'),
('Cancelled'),
('Returned'),
('On Hold'),
('Backordered'),
('Payment Failed'),
('Awaiting Pickup'),
('Awaiting Shipment'),
('Partially Shipped'),
('Completed'),
('In Transit'),
('Refunded');

INSERT INTO shipping_method (method_name, estimated_days, cost) VALUES 
('Standard Shipping', 5, 5.99),
('Express Shipping', 2, 12.99),
('Next Day Delivery', 1, 19.99),
('In-Store Pickup', 0, 0.00),
('Drone Delivery', 1, 24.99),
('Eco Shipping', 7, 3.50),
('Weekend Delivery', 2, 9.99),
('Same Day Delivery', 0, 14.99),
('Overnight Shipping', 1, 18.50),
('Courier Service', 3, 6.75),
('Digital Delivery', 0, 0.00),
('Scheduled Delivery', 4, 7.99),
('Economy Freight', 10, 2.99),
('Premium Air Freight', 1, 29.99),
('Bicycle Courier', 1, 4.20);

INSERT INTO cust_order (customer_id, order_date, status_id, shipping_method_id, total_amount) VALUES 
(1, '2025-04-01 10:15:00', 1, 1, 25.98),
(2, '2025-04-02 11:30:00', 2, 2, 42.00),
(3, '2025-04-03 09:00:00', 3, 3, 19.99),
(4, '2025-04-04 14:45:00', 4, 4, 0.00),
(5, '2025-04-05 13:20:00', 5, 5, 36.50),
(6, '2025-04-06 16:10:00', 6, 6, 21.50),
(7, '2025-04-07 12:00:00', 7, 7, 15.25),
(8, '2025-04-08 15:30:00', 8, 8, 60.00),
(9, '2025-04-09 17:00:00', 9, 9, 89.95),
(10, '2025-04-10 08:25:00', 10, 10, 14.99),
(11, '2025-04-11 19:00:00', 11, 11, 13.00),
(12, '2025-04-12 10:10:00', 12, 12, 44.40),
(13, '2025-04-13 20:30:00', 13, 13, 17.70),
(14, '2025-04-14 09:45:00', 14, 14, 27.89),
(15, '2025-04-15 18:15:00', 15, 15, 33.33);

INSERT INTO order_line (order_id, book_id, quantity, price_each) VALUES 
(1, 1, 1, 19.99),
(1, 10, 1, 5.99),
(2, 2, 2, 21.00),
(3, 3, 1, 19.99),
(4, 4, 1, 22.99),
(5, 5, 2, 16.99),
(6, 6, 1, 21.50),
(7, 7, 1, 14.00),
(8, 8, 2, 18.00),
(9, 9, 1, 17.95),
(10, 10, 1, 11.95),
(11, 11, 1, 14.95),
(12, 12, 2, 9.99),
(13, 13, 1, 16.00),
(14, 14, 1, 13.99),
(15, 15, 1, 15.00);

INSERT INTO order_history (order_id, status_id, update_time, note) VALUES 
(1, 1, '2025-04-01 10:20:00', 'Order received.'),
(1, 2, '2025-04-01 12:00:00', 'Processing started.'),
(2, 2, '2025-04-02 11:35:00', 'Order is being packed.'),
(3, 3, '2025-04-03 09:15:00', 'Shipped via express.'),
(4, 4, '2025-04-04 15:00:00', 'Customer picked up the order.'),
(5, 5, '2025-04-05 13:30:00', 'Cancelled by customer.'),
(6, 6, '2025-04-06 16:20:00', 'Item returned.'),
(7, 7, '2025-04-07 12:10:00', 'On hold for payment.'),
(8, 8, '2025-04-08 15:45:00', 'Backordered item.'),
(9, 9, '2025-04-09 17:10:00', 'Payment failed.'),
(10, 10, '2025-04-10 08:30:00', 'Ready for pickup.'),
(11, 11, '2025-04-11 19:10:00', 'Awaiting shipment.'),
(12, 12, '2025-04-12 10:15:00', 'Partially shipped.'),
(13, 13, '2025-04-13 20:45:00', 'Order completed.'),
(14, 14, '2025-04-14 09:55:00', 'Package in transit.'),
(15, 15, '2025-04-15 18:20:00', 'Refund issued.');

