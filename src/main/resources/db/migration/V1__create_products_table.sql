CREATE TABLE products (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255),
    price NUMERIC(38,2),
    category VARCHAR(255),
    image_url VARCHAR(255)
);