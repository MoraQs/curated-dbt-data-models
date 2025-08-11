-- This macro generates a schema name based on the provided custom schema name or defaults to the target schema.


{% macro generate_schema_name(custom_schema_name, node) %}
    {% if custom_schema_name is not none %}
        {{ custom_schema_name | trim }}
    {% else %}
        {{ target.schema }}
    {% endif %}
{% endmacro %}
