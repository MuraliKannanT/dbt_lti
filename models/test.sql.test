
{{
    config(
        materialized='view',
        post_hook=spins()
    )
}}


select * from {{ source('src', 'nation') }}
