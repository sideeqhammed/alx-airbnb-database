-- retrieve all bookings and the respective users who made those bookings.
SELECT booking.booking_id, user.user_id
FROM booking
INNER JOIN user ON booking.user_id = user.user_id

-- retrieve all properties and their reviews, including properties that have no reviews.
SELECT property.property_id, review.comment
FROM property
LEFT JOIN property ON property.property_id = review.property_id

-- retrieve all users and all bookings, even if the user has no booking or a booking is not linked to a user.
SELECT user.user_id, booking.booking_id
FROM user
FULL OUTER JOIN booking ON user.user_id = booking.user_id
