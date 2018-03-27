#!/bin/sh

set -e

# only run once
if [[ -d /var/dokuwiki ]]; then
    # change /var/dokuwiki to /var/www
    mkdir -p /var/dokuwiki-storage/data /var/dokuwiki-storage/lib && \
        rm -rf /var/www && \
        mv /var/dokuwiki /var/www && \

    # If there already have data in target folder, use it then. Else use default data.
    if [[ ! -d /var/dokuwiki-storage/data/pages ]]; then
        mv /var/www/data/pages /var/dokuwiki-storage/data/pages && \
        mv /var/www/data/meta /var/dokuwiki-storage/data/meta && \
        mv /var/www/data/media /var/dokuwiki-storage/data/media && \
        mv /var/www/data/media_attic /var/dokuwiki-storage/data/media_attic && \
        mv /var/www/data/media_meta /var/dokuwiki-storage/data/media_meta && \
        mv /var/www/conf /var/dokuwiki-storage/conf && \
        mv /var/www/data/attic /var/dokuwiki-storage/data/attic && \
        mv /var/www/lib/plugins /var/dokuwiki-storage/lib/plugins
    fi

    # make link
    rm -rf /var/www/data/media && \
        ln -fs /var/dokuwiki-storage/data/media /var/www/data/media && \
        rm -rf /var/www/data/pages && \
        ln -fs /var/dokuwiki-storage/data/pages /var/www/data/pages && \
        rm -rf /var/www/data/meta && \
        ln -fs /var/dokuwiki-storage/data/meta /var/www/data/meta && \
        rm -rf /var/www/data/media_attic && \
        ln -fs /var/dokuwiki-storage/data/media_attic /var/www/data/media_attic && \
        rm -rf /var/www/data/media_meta && \
        ln -fs /var/dokuwiki-storage/data/media_meta /var/www/data/media_meta && \
        rm -rf /var/www/conf && \
        ln -fs /var/dokuwiki-storage/conf /var/www/conf && \
        rm -rf /var/www/data/attic && \
        ln -fs /var/dokuwiki-storage/data/attic /var/www/data/attic && \
        rm -rf /var/www/lib/plugins && \
        ln -fs /var/dokuwiki-storage/lib/plugins /var/www/lib/plugins
fi

chown -R nobody /var/www
chown -R nobody /var/tmp
chown -R nobody /var/dokuwiki-storage

su -s /bin/sh nobody -c 'php7 /var/www/bin/indexer.php -c'

exec /usr/bin/supervisord -c /etc/supervisord.conf
