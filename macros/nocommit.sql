{% macro chkcom() %}


copy into mkmotors_dev.staging.stg_dealership from @mkmotors_dev.staging.s3dealers file_format = (type=csv field_optionally_enclosed_by = '''');

{% endmacro %}