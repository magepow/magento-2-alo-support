# Ugrade 2.3.3 to 2.4.3 error: Integrity constraint violation
CREATE TABLE catalog_url_rewrite_product_category_temporary SELECT DISTINCT url_rewrite_id, category_id, product_id FROM catalog_url_rewrite_product_category;

DROP TABLE catalog_url_rewrite_product_category;

RENAME TABLE catalog_url_rewrite_product_category_temporary TO catalog_url_rewrite_product_category;