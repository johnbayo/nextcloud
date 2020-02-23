envsubst < $custom_config_php > custom_config_insert_changes
sed -i "s|http://localhost|$NEXTCLOUD_URL|" $NEXTCLOUD_CUSTOM_CONFIG_PATH
sed -i '/overwrite.cli.url/r custom_config_insert_changes' $NEXTCLOUD_CUSTOM_CONFIG_PATH
rm custom_config_insert_changes
