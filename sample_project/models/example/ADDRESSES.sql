{{ config(materialized='table') }}

WITH addresses as (
    SELECT UPPER(CITY),
               ADDRESS_1,
               'UNITED STATES' AS COUNTRY
       FROM MY_DB.PUBLIC.ADDRESSES
       WHERE CITY='San Mateo'
)

SELECT * FROM addresses