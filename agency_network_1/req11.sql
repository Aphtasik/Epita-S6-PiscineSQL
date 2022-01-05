SELECT id,
    CASE WHEN now() > end_date THEN 'Done'
        WHEN now() BETWEEN start_date AND end_date THEN 'Ongoing'
        ELSE 'Booked'
    END AS "trip status"
FROM booking
ORDER BY "trip status", id;
