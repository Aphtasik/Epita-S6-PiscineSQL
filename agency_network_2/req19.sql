SELECT surname, customer.name, destination, hotel FROM destination, customer, hotel
WHERE customer.top_destination = destination.acronym AND destination.hotel_id = hotel.id
ORDER BY surname, customer.name, destination, hotel
