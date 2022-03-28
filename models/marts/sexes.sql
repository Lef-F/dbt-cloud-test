{{
    config(
        materialized='table'
    )
}}

SELECT
    sex
    , COUNT(passenger_id) AS passengers
FROM {{
    ref('titanic_stg')
}}
GROUP BY sex
ORDER BY passengers DESC
