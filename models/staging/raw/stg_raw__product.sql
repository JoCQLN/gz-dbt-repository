with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        products_id,
        (purchse_price) as purchase_cost

    from source

)

select * from renamed
