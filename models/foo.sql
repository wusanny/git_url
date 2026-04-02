{{ config(materialized='table') }}

select '{{ var("run_date") }}' as run_date