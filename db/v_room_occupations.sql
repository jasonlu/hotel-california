SELECT t1.id, t1.room_id, t1.booking_id, t1.visit_id, t1.start_at, t1.end_at, t2.start_at AS next_start, t1.created_at, t1.updated_at
FROM hotel_booking.room_occupations t1
LEFT OUTER JOIN (SELECT * FROM hotel_booking.room_occupations t1 ORDER BY room_id, t1.start_at) AS t2
 ON t2.room_id = t1.room_id AND t2.start_at >= t1.end_at 
GROUP BY t1.id ORDER BY t1.room_id ASC, t1.end_at ASC, t1.start_at ASC;
