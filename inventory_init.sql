INSERT INTO `inventory_source` (`source_code`, `name`, `enabled`, `description`, `latitude`, `longitude`, `country_id`, `region_id`, `region`, `city`, `street`, `postcode`, `contact_name`, `email`, `phone`, `fax`, `use_default_carrier_config`) VALUES
('default', 'Default Source', 1, 'Default Source', '0.000000', '0.000000', 'US', NULL, NULL, NULL, NULL, '00000', NULL, NULL, NULL, NULL, 1);


INSERT INTO `inventory_stock` (`stock_id`, `name`) VALUES
(1, 'Default Stock');


INSERT INTO `inventory_stock_sales_channel` (`type`, `code`, `stock_id`) VALUES
('website', 'base', 1);


INSERT INTO `inventory_source_stock_link` (`link_id`, `stock_id`, `source_code`, `priority`) VALUES
(1, 1, 'default', 1);


INSERT IGNORE INTO `inventory_source_item` (source_code, sku, quantity, status)
select 'default', sku, qty, stock_status from (`cataloginventory_stock_status` as `lg` join `catalog_product_entity` as `prd` on((`lg`.`product_id` = `prd`.`entity_id`)));



CREATE
OR REPLACE
VIEW `inventory_stock_1` AS select
    distinct `legacy_stock_status`.`product_id` AS `product_id`,
    `legacy_stock_status`.`website_id` AS `website_id`,
    `legacy_stock_status`.`stock_id` AS `stock_id`,
    `legacy_stock_status`.`qty` AS `quantity`,
    `legacy_stock_status`.`stock_status` AS `is_salable`,
    `product`.`sku` AS `sku`
from
    ( `cataloginventory_stock_status` `legacy_stock_status`
join `catalog_product_entity` `product` on
        (( `legacy_stock_status`.`product_id` = `product`.`entity_id` )));