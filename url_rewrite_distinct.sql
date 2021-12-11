CREATE TABLE catalog_url_rewrite_product_category_temporary SELECT DISTINCT url_rewrite_id, category_id, product_id FROM catalog_url_rewrite_product_category;

DROP TABLE catalog_url_rewrite_product_category;

RENAME TABLE catalog_url_rewrite_product_category_temporary TO catalog_url_rewrite_product_category;