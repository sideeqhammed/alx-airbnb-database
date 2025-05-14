-- retrieve all bookings and the respective users who made those bookings.
SELECT booking.booking_id, user.user_id
FROM booking
INNER JOIN user
ON booking.user_id = user.user_id
