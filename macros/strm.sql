{% macro teststrm() %}

{% set queries %}

insert into mkmotors_dev.staging.dm_products 
(product_id, group_id, product_desc, product_cost, updated_datekey, current_flag) 
select product_id, group_id, product, prodcost, update_ts, 'TRUE' from 
mkmotors_dev.staging.strm_products;

{% endset %}

{% do run_query(queries) %}

{% endmacro %}