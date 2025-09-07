AirBnB Database Project
Project Overview

This project implements a relational database schema for an AirBnB-like platform. The database manages users, properties, bookings, payments, reviews, and messages.

The goal is to apply normalization principles, ensure data integrity, and prepare the database for potential backend development.

Database Schema
1. Users

Stores user information.

Fields: user_id, first_name, last_name, email, password_hash, phone_number, role, created_at.

role can be guest, host, or admin.

2. Properties

Represents properties listed by hosts.

Fields: property_id, host_id (FK → Users), name, description, location, price_per_night, created_at, updated_at.

3. Bookings

Tracks bookings by users for properties.

Fields: booking_id, property_id (FK → Properties), user_id (FK → Users), start_date, end_date, total_price, status.

status can be pending, confirmed, or canceled.

4. Payments

Records payments for bookings.

Fields: payment_id, booking_id (FK → Bookings), amount, payment_date, payment_method.

payment_method can be credit_card, paypal, or stripe.

5. Reviews

Stores user reviews for properties.

Fields: review_id, property_id (FK → Properties), user_id (FK → Users), rating (1–5), comment, created_at.

6. Messages

Tracks messages between users.

Fields: message_id, sender_id (FK → Users), recipient_id (FK → Users), message_body, sent_at.

Normalization

The database is normalized to Third Normal Form (3NF).

There are no redundant data or transitive dependencies.

Exception: Booking.total_price is a derived field (price per night × number of nights) stored for convenience.

Setup Instructions

Open MySQL and create a new database:

CREATE DATABASE airbnb_clone;
USE airbnb_clone;


Run the SQL schema (schema.sql) to create all tables:

SOURCE /path/to/schema.sql;


Verify tables:

SHOW TABLES;
DESCRIBE users;

Notes

All primary keys are UUIDs (CHAR(36)).

Foreign keys ensure referential integrity.

Indexes are added for performance optimization.