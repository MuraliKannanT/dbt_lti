{{
    config(
        materialized='table'
    )
}}

select 
order_item_id,
order_id,
customer_id,
base_price as base_price_usd, 
discounted_price,
{{ dol_eur('base_price',2)}} base_price_eur
from {{ ref('order_items') }}