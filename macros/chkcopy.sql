{% macro copychk() %}

{% set copy_query %}
begin transaction;
copy into stg_dealership from @s3unload file_format = (type=csv field_optionally_enclosed_by = '''');
commit;
{% endset %}

{% do run_query(copy_query) %}

{% endmacro %}