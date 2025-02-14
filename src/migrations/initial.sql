-- Create 'category' table
CREATE TABLE category (
    id SERIAL PRIMARY KEY,
    categoryName VARCHAR(100) NOT NULL,
    description VARCHAR(255),
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create 'products' table
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    productName VARCHAR(100) NOT NULL,
    description VARCHAR(255),
    price NUMERIC(10, 2) NOT NULL,
    stockQuantity INTEGER NOT NULL,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    categoryId INTEGER REFERENCES category(id) ON DELETE CASCADE
);

-- Insert sample data into 'category'
INSERT INTO category (categoryName, description) VALUES
('Electronics', 'Electronic gadgets and devices'),
('Furniture', 'Office and home furniture');

-- Insert sample data into 'products'
INSERT INTO products (productName, description, price, stockQuantity, categoryId) VALUES
('Laptop', 'High-end gaming laptop', 1299.99, 5, 1),
('Office Chair', 'Ergonomic office chair', 299.99, 15, 2);