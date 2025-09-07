AirBnB Database Project – Sample Data
Overview

This project implements a relational database schema for an AirBnB-like platform.

The database has been seeded with realistic sample data to simulate real-world usage, including users, properties, bookings, payments, reviews, and messages. This allows testing of queries, reports, and application features.

Sample Data Included
1. Users

Multiple users including guests and hosts.

Fields: user_id, first_name, last_name, email, role, etc.

2. Properties

Several properties listed by hosts.

Fields: property_id, host_id, name, description, location, price_per_night.

3. Bookings

Simulates real bookings made by users.

Fields: booking_id, property_id, user_id, start_date, end_date, total_price, status.

4. Payments

Payments corresponding to bookings.

Fields: payment_id, booking_id, amount, payment_method.

5. Reviews

Reviews from users about properties.

Fields: review_id, property_id, user_id, rating, comment.

6. Messages

Sample messages exchanged between users.

Fields: message_id, sender_id, recipient_id, message_body.