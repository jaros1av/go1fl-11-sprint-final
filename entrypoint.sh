#!/bin/sh
set -e #если ошибка не пойдем дальше выполнять приложение

DB=/app/tracker.db

#проверяем есть ли БД и не пустая(есть таблицы)
if [ ! -s "$DB" ]; then
    echo "init DB from init.sql"
    sqlite3 "$DB" < /init.sql
fi

exec /my_app