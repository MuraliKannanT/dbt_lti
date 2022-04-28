{% macro spins() %} 
{% set rand_query %}
    select uniform(1, 10000, random()) rndno limit 1
{% endset %}
{% set resultnum = run_query(rand_query)%}
{% if execute %}
    {% set numbr = resultnum.rows[0]['RNDNO'] %}
{% endif %}
{# {% set numbr=25 %} #}
{% set supp_query %}
    select top 1 skey,sname from analytics.sch_lti.supplier_names where skey={{numbr}}
{% endset %}
{% set results = run_query(supp_query) %}
{% if execute %}
    {% set supkey = results.rows[0] %}
    {% set proquery %}
    call SOURCEDB.MK_MALL.INSERT_VALUE({{supkey['SKEY']}} , '{{ supkey['SNAME'] }}' );
    {% endset %}
    {% do run_query(proquery) %}
 {% endif %}
{% endmacro %}