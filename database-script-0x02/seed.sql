-- Step 1: Users Table
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES,
(UUID(), 'Alice', 'Johnson', 'alice@example.com', 'hash1', '08036782936', 'guest'),
(UUID(), 'Bob', 'Smith', 'bob@example.com', 'hash2', '09078386352', 'host'),
(UUID(), 'Charlie', 'Brown', 'charlieb@exmaple.com', 'hash3', '08182764763', 'guest');

-- Step 2: Properties Table
INSERT INTO properties (property_id, host_id, name, description, location, price_per_night)
VALUES
(UUID(), (SELECT user_id FROM users WHERE first_name='Bob'), 'Seaside Villa', 'Luxury villa by the beach', 'Lagos', 150.00),
(UUID(), (SELECT user_id FROM users WHERE first_name='Bob'), 'Mountain Cabin', 'Cozy cabin in the mountains', 'Abuja', 80.00);
(UUID(), (SELECT user_id FROM users WHERE first_name='Alice'), 'Penthouse', 'Top view', 'Portharcourt', 120.00)

-- Step 3: Booking Table
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
(UUID(), (SELECT property_id FROM properties WHERE name='Seaside Villa'), (SELECT user_id from users where first_name='Alice'), 
'2025-09-10', '2025-09-15, 750.00', 'confirmed'),

(UUID(), (SELECT property_id FROM properties WHERE name ='Mountain Cabin'), (SELECT user_id from users WHERE first_name='Charlie'), 
'2025-10-01', '2025-10-05', 400.00, 'pending');

-- Step 4 Payments Table
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES 
(UUID(), (SELECT booking_id FROM bookings WHERE total_price=750.00), 750.00, 'credit_card'),
(UUID(), (SELECT booking_id FROM bookings WHERE total_price=400.00), 400.00, 'paypal');

-- Step 5: Reviews Table
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES 
(UUID(), (SELECT property_id FROM properties WHERE name='Seaside Villa'), 
        (SELECT user_id FROM users WHERE first_name='Alice'), 5, 'Amazing stay!'),
(UUID(), (SELECT property_id FROM properties WHERE name='Mountain Cabin'), 
        (SELECT user_id FROM users WHERE first_name='Charlie'), 4, 'Very cozy and peaceful.');

-- Step 6: Messages Table
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES 
(UUID(), (SELECT user_id FROM users WHERE first_name='Alice'), 
        (SELECT user_id FROM users WHERE first_name='Bob'), 'Hi Bob, looking forward to my stay!'),
(UUID(), (SELECT user_id FROM users WHERE first_name='Charlie'), 
        (SELECT user_id FROM users WHERE first_name='Bob'), 'Can you confirm my booking dates?');

-- Step 7: Verify Sample Data
SELECT * FROM users;
SELECT * FROM properties;
SELECT * FROM bookings;
SELECT * FROM payments;
SELECT * FROM reviews;
SELECT * FROM messages;











-- INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
-- VALUES 
-- (UUID(), (SELECT property_id FROM properties WHERE name='Seaside Villa'), 
--         (SELECT user_id FROM users WHERE first_name='Alice'), '2025-09-10', '2025-09-15', 750.00, 'confirmed'),

-- (UUID(), (SELECT property_id FROM properties WHERE name='Mountain Cabin'), 
--         (SELECT user_id FROM users WHERE first_name='Charlie'), '2025-10-01', '2025-10-05', 400.00, 'pending');
