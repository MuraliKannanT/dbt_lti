{% macro testdml1() %}

{% set queries %}


select * FROM TABLE(MKMOTORS_DEV.STAGING.DATECALC(current_date));

{% endset %}

{% do run_query(queries) %}

{% endmacro %}