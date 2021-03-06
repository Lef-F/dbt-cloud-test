{{
    config(
        materialized='table'
    )
}}

SELECT
    sex
    , COUNT(passenger_id) AS passengers
FROM {{
    ref('titanic_stg_1')
}}
GROUP BY sex
ORDER BY passengers DESC
