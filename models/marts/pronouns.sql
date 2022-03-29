{{
    config(
        materialized='table'
    )
}}

SELECT
    pronoun
    , COUNT(*) AS passengers
FROM {{
    ref('titanic_stg_2')
}}
GROUP BY pronoun
ORDER BY passengers DESC
