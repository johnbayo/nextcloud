FROM nextcloud:18.0.0-apache

ENV NEXTCLOUD_URL=$NEXTCLOUD_URL
ENV NEXTCLOUD_CUSTOM_CONFIG_PATH=$NEXTCLOUD_CUSTOM_CONFIG_PATH
ENV custom_config_php=/tmp/custom_config_php

RUN apt-get update && \
  apt-get install gettext-base -y

COPY docker/custom_config_php /tmp/custom_config_php
COPY docker/update_config.sh /tmp/update_config.sh
COPY docker/entrypoint.sh /entrypoint.sh

RUN chmod 775 /entrypoint.sh
RUN chmod +x /tmp/update_config.sh
