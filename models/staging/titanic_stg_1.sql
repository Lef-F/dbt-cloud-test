{{
    config(
        materialized='view'
    )
}}

-- Rename to snake_case because postgres doesn't feel good about column capitalization
SELECT
    "PassengerId" AS passenger_id
    , "Survived" AS survived
    , "Pclass" AS p_class
    , "Name" AS name
    , "Sex" AS sex
    , "Age" AS age
    , "SibSp" AS sib_sp
    , "Parch" AS parch
    , "Ticket" AS ticket
    , "Fare" AS fare
    , "Cabin" AS cabin
    , "Embarked" AS embarked
FROM {{
    source('test', 'titanic')
}}
