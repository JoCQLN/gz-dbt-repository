with 

source as (

    select * from {{ source('raw', 'facebook') }}

),

renamed as (

    select
        date_date,
        paid_source,
        campaign_key,
        (campgn_name) as campaign_key,
        CAST(ads_cost as FLOAT64),
        impression,
        click

    from source

)

select * from renamed
