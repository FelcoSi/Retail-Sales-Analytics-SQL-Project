
CREATE TABLE regions (
    region_id SERIAL PRIMARY KEY,
    name VARCHAR(100)
);

CREATE TABLE customers (
    customer_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    signup_date DATE,
    region_id INT REFERENCES regions(region_id)
);

CREATE TABLE sales_reps (
    sales_rep_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    region_id INT REFERENCES regions(region_id)
);

CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    category VARCHAR(50),
    unit_price NUMERIC(10, 2)
);

CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    customer_id INT REFERENCES customers(customer_id),
    product_id INT REFERENCES products(product_id),
    sales_rep_id INT REFERENCES sales_reps(sales_rep_id),
    order_date DATE,
    amount NUMERIC(10, 2)
);
