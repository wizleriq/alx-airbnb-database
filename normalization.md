# Database Normalization for AirBnB Schema

## Step 1: First Normal Form (1NF)
- All tables have atomic values.
- Each row is uniquely identifiable using primary keys.

## Step 2: Second Normal Form (2NF)
- All non-key attributes are fully dependent on the primary key.
- Foreign keys are used to maintain relationships (e.g., `host_id` in Property, `user_id` in Booking).

## Step 3: Third Normal Form (3NF)
- Removed or noted transitive dependencies:
  - In `Booking`, `total_price` is calculated from `Property.pricepernight * number of nights`. 
    - Optional: Keep for convenience, but it’s a derived attribute.
- All other tables (User, Property, Payment, Review, Message) have no transitive dependencies.

## Conclusion
The database schema is now in 3NF, minimizing redundancy and ensuring consistency while maintaining relational integrity.
