-- Initialize database for Expense Sharing Platform

-- Users table
CREATE TABLE users (
  user_id SERIAL PRIMARY KEY,
  username VARCHAR(50) UNIQUE NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  password_hash VARCHAR(100) NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  phone_number VARCHAR(20),
  is_verified BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Resource categories
CREATE TABLE resource_categories (
  category_id SERIAL PRIMARY KEY,
  name VARCHAR(50) NOT NULL,
  description TEXT
);

-- Resource listings
CREATE TABLE resource_listings (
  listing_id SERIAL PRIMARY KEY,
  user_id INTEGER REFERENCES users(user_id),
  title VARCHAR(100) NOT NULL,
  description TEXT NOT NULL,
  category_id INTEGER REFERENCES resource_categories(category_id),
  sharing_price DECIMAL(10,2),
  sharing_price_unit VARCHAR(20),
  location_zip VARCHAR(20),
  is_active BOOLEAN DEFAULT TRUE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Sample data
INSERT INTO resource_categories (name, description) VALUES
('Tools & Equipment', 'Power tools, gardening equipment, and other tools'),
('Household Items', 'Kitchen appliances, furniture, and other household goods'),
('Transportation', 'Cars, bikes, and other transportation options'),
('Electronics', 'Cameras, computers, and other electronic devices'),
('Professional Services', 'Skills and services offered by professionals');
