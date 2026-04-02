{{ config(materialized='incremental', unique_key='id') }}

with source as (
    select
        1 as id,
        '{{ var("run_date") }}' as run_date,
        current_timestamp() as loaded_at
)

select * from source

{% if is_incremental() %}
    where run_date = '{{ var("run_date") }}'
{% endif %}