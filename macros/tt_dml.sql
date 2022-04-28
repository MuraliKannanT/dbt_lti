{% macro testdml() %}

{% set queries %}

create or replace table analytics.sch_lti.protest2(id int, name varchar);
insert into analytics.sch_lti.protest2 values(10,'murali'),(11,'kannan'),(12,'none');
update analytics.sch_lti.protest2 set name='Guru' where id=12;

{% endset %}

{% do run_query(queries) %}

{% endmacro %}