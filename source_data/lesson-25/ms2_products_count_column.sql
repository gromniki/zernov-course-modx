ALTER TABLE modx_ms2_products
ADD COLUMN count int unsigned default 0 null;
CREATE INDEX COUNT ON modx_ms2_products (count);

