CREATE TABLE IF NOT EXISTS parcel
(
    number integer constraint parcel_pk primary key autoincrement,
    client integer not null,
    status VARCHAR(128) not null,
    address VARCHAR(512) not null,
    created_at text not null
);