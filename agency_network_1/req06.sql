SELECT destination_acronym AS destination, customer_surname AS customer, travelers, CAST(end_date - start_date AS INTEGER) AS number_of_days FROM booking
ORDER BY number_of_days DESC, destination, customer;
