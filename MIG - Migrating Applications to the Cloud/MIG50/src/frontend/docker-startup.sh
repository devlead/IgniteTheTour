cd dist
PRODUCT_SERVICE_BASE_URL=${PRODUCT_SERVICE_BASE_URL//\//\\\/}
grep -rl '%%PRODUCT_SERVICE_BASE_URL%%' . | xargs sed -i "s/%%PRODUCT_SERVICE_BASE_URL%%/$PRODUCT_SERVICE_BASE_URL/g"

INVENTORY_SERVICE_BASE_URL=${INVENTORY_SERVICE_BASE_URL//\//\\\/}
grep -rl '%%INVENTORY_SERVICE_BASE_URL%%' . | xargs sed -i "s/%%INVENTORY_SERVICE_BASE_URL%%/$INVENTORY_SERVICE_BASE_URL/g"

grep -rl '%%DISPLAY_SQL_INFO%%' . | xargs sed -i "s/%%DISPLAY_SQL_INFO%%/$DISPLAY_SQL_INFO/g"
grep -rl '%%APPINSIGHTS_INSTRUMENTATIONKEY%%' . | xargs sed -i "s/%%APPINSIGHTS_INSTRUMENTATIONKEY%%/$APPINSIGHTS_INSTRUMENTATIONKEY/g"

caddy -port $PORT