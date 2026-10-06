INSERT INTO products (name, price, category, image_url)
SELECT v.name, v.price, v.category, v.image_url
FROM (VALUES
    ('Wireless Mouse',      29.99, 'Electronics', 'https://images.unsplash.com/photo-1615663245857-ac93bb7c39e7?w=800&auto=format&fit=crop&q=80'),
    ('USB-C Cable',          9.99, 'Electronics', 'https://images.unsplash.com/photo-1595756630452-736bc8ef3693?w=800&auto=format&fit=crop&q=80'),
    ('Coffee Mug',          12.50, 'Home',        'https://images.unsplash.com/photo-1610478506025-8110cc8f1986?w=800&auto=format&fit=crop&q=80'),
    ('Mechanical Keyboard', 89.99, 'Electronics', 'https://images.unsplash.com/photo-1618384887929-16ec33fab9ef?w=800&auto=format&fit=crop&q=80'),
    ('Desk Lamp',           34.99, 'Home',        'https://images.unsplash.com/photo-1621177555452-bedbe4c28879?w=800&auto=format&fit=crop&q=80'),
    ('Leather Notebook',    18.00, 'Stationery',  'https://images.unsplash.com/photo-1583341655648-78bdf4ed6d13?w=800&auto=format&fit=crop&q=80'),
    ('Canvas Backpack',     49.99, 'Accessories', 'https://images.unsplash.com/photo-1655303219938-3a771279c801?w=800&auto=format&fit=crop&q=80'),
    ('Sunglasses',          32.00, 'Accessories', 'https://images.unsplash.com/photo-1572635196237-14b3f281503f?w=800&auto=format&fit=crop&q=80'),
    ('Fountain Pen',        28.00, 'Stationery',  'https://images.unsplash.com/photo-1505308843978-ea2cb9913b44?w=800&auto=format&fit=crop&q=80')
) AS v(name, price, category, image_url)
WHERE NOT EXISTS (SELECT 1 FROM products);