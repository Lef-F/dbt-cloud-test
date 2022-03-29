{{
    config(
        materialized='view'
    )
}}

SELECT 
     passenger_id
    , survived
    , p_class
    , SPLIT_PART(
        SPLIT_PART(name, ',', 2), 
        '.', -1
    ) AS pronoun
    , SPLIT_PART(
        SPLIT_PART(name, ',', 2)
        , '.', 2
    ) AS first_name
    , SPLIT_PART(name, ',', 1) AS last_name
    , sex
    , age
    , sib_sp
    , parch
    , ticket
    , fare
    , cabin
    , embarked
FROM {{
    ref('titanic_stg_2')
}}