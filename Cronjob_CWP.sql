The example command config cronjob Magento 2:

1. The command cron job magento
// Once per minute
/usr/local/bin/php /home/thebrand/public_htmls/bin/magento cron:run >> /home/thebrand/public_htmls/var/log/magento.cron.log

// Daily (at midnight)
/usr/local/bin/php /home/thebrand/public_htmls/update/cron.php >> /home/thebrand/public_htmls/var/log/update.cron.log

// Daily (at midnight)
// This cron not use or Magento 2.4.0 or higher
/usr/local/bin/php /home/thebrand/public_htmls/bin/magento setup:cron:run >> /home/thebrand/public_htmls/var/log/setup.cron.log


2. The command fix error full disk cause with cache Magento 2 in some site:

// Daily (at midnight)
find /home/thebrand/public_htmls/var/cache/ -mtime +7 -exec rm {} \;

// Daily (at midnight)
find /home/thebrand/public_htmls/var/page_cache/ -mtime +7 -exec rm {} \;