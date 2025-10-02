CREATE TABLE public.classification (
    classification_id SERIAL PRIMARY KEY,
    classification_name VARCHAR(255) NOT NULL
);
CREATE TABLE public.inventory (
    inventory_id SERIAL PRIMARY KEY,
    classification_id INT REFERENCES public.classification(classification_id),
    item_name VARCHAR(255) NOT NULL,
    item_description TEXT,
    item_price NUMERIC(10, 2)
);