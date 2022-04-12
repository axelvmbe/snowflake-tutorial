select
    booking_date,
    hotel,
    count(id) as count_bookings
from {{ ref('prepped_data') }}
group by
    booking_date,
    hotel