-- models/stg_foo.sql

{{ config(
    materialized='table'
) }}

SELECT * FROM VALUES
(1, '2024-01-01 10:00:00'::timestamp_ntz, 10),
(2, '2024-01-01 11:00:00'::timestamp_ntz, 15),
(3, '2024-01-02 09:00:00'::timestamp_ntz, 20),
(4, '2024-01-03 12:00:00'::timestamp_ntz, 25),
(5, '2024-01-03 13:00:00'::timestamp_ntz, 30)
AS t(event_id, event_timestamp, value)