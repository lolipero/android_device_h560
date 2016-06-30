#!/bin/bash

# Переменные

# Путь к выходной папке:
OUT=/home/verevka/cm12.1/out/target/product/s3_h560

# Не изменять!
FILENAME=cm-$(cat $OUT/system/build.prop | grep ro.cm.version= | cut -d '=' -f2).zip

# Путь к папке с API
APIDIR=/home/verevka/API_CMUpdater

# Канал обновлений
CHANNEL=NIGHTLY

# Ссылка изменений в прошивке
CHANGES=https://raw.githubusercontent.com/Verevka/API_CMUpdater/master/CHANGELOG

# Ссылка на прошивку
URL=http://pudovnya-city.by/P70-A-cm-12.1/$FILENAME



###################################################################################################
TIMESTAMP=$(cat $OUT/system/build.prop | grep ro.build.date.utc= | cut -d '=' -f2)
API_LEVEL=$(cat $OUT/system/build.prop | grep ro.build.version.sdk= | cut -d '=' -f2)
MD5SUM=$(cat $OUT/$FILENAME.md5sum | cut -d ' ' -f1)
INCREMENTAL=$(cat $OUT/system/build.prop | grep ro.build.version.incremental= | cut -d '=' -f2)

(cat << EOF) > $APIDIR/API
{
 "id": null,
 "result": [
{
    "url": "$URL",
    "timestamp": "$TIMESTAMP",
    "api_level": "$API_LEVEL",
    "md5sum": "$MD5SUM",
    "filename": "$FILENAME",
    "channel": "$CHANNEL",
    "changes": "$CHANGES",
    "incremental": "$INCREMENTAL"
    },
  ],
 "error": null
}
EOF

