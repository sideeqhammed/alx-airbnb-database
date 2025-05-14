SELECT user_id, booking_id, count(*)
FROM booking
GROUP BY user_id;
