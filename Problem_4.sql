-- Create the 'products' table
CREATE TABLE products (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL
);

-- Insert some sample data into the 'products' table
INSERT INTO products (product_name, price) VALUES
    ('Milk', 2.50),
    ('Bread', 1.75),
    ('Eggs', 1.99),
    ('Snacks', 3.50),
    ('Toothpaste', 2.00);

-- Create the 'transactions' table
CREATE TABLE transactions (
    transaction_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(255) NOT NULL,
    transaction_date DATE NOT NULL,
    product_id INT REFERENCES products(product_id),
    quantity INT NOT NULL,
    total_amount DECIMAL(10, 2) NOT NULL
);

-- Insert some sample data into the 'transactions' table
INSERT INTO transactions (customer_name, transaction_date, product_id, quantity, total_amount) VALUES
    ('John Doe', '2024-01-16', 1, 2, 5.00),
    ('Jane Smith', '2024-01-16', 3, 1, 1.99),
    ('Bob Johnson', '2024-01-17', 2, 3, 5.25),
    ('Alice Brown', '2024-01-17', 4, 2, 7.00);
