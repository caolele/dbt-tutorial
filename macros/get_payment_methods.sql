-- generic function
{% macro get_column_values(column_name, relation) %}
{#
{{ return(["bank_transfer", "credit_card", "gift_card"])}}
#}
{% set relation_query %}
select distinct
{{ column_name }}
from {{ relation }}
order by 1
{% endset %}

{% set results = run_query(relation_query) %}
{# {{ log(results, info=True) }} #}

{% if execute %}
{# Return the first column #}
{% set results_list = results.columns[0].values() %}
{% else %}
{% set results_list = [] %}
{% endif %}

{{ return(results_list) }}

{% endmacro %}

-- specific function
{% macro get_payment_methods() %}
{{ return(get_column_values('payment_method', ref('raw_payments'))) }}
{% endmacro %}