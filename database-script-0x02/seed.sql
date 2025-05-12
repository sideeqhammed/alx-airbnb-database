INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role, created_at)
VALUES
('u-101', 'Daniel', 'Brown', 'daniel.brown@example.com', 'hash_daniel', '5551234567', 'guest', '2025-01-01 10:00:00'),
('u-102', 'Emma', 'Wilson', 'emma.wilson@example.com', 'hash_emma', '5557654321', 'host', '2025-01-02 11:15:00'),
('u-103', 'Grace', 'Taylor', 'grace.taylor@example.com', 'hash_grace', NULL, 'admin', '2025-01-03 08:30:00');

INSERT INTO Property (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES
('p-201', 'u-102', 'Urban Loft', 'Modern loft in the city center', 'New York, NY', 220.00, '2025-02-10 09:00:00', '2025-02-15 10:00:00'),
('p-202', 'u-102', 'Lakeside Villa', 'Spacious villa with lake view', 'Lake Tahoe, CA', 300.00, '2025-02-12 14:00:00', '2025-02-20 16:00:00');

INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES
('b-301', 'p-201', 'u-101', '2025-08-01', '2025-08-04', 660.00, 'confirmed', '2025-07-01 12:00:00'),
('b-302', 'p-202', 'u-101', '2025-09-15', '2025-09-17', 600.00, 'pending', '2025-07-15 14:30:00');

INSERT INTO Payment (payment_id, booking_id, amount, payment_date, payment_method)
VALUES
('pay-401', 'b-301', 660.00, '2025-07-01 13:00:00', 'stripe'),
('pay-402', 'b-302', 600.00, '2025-07-15 15:00:00', 'credit_card');

INSERT INTO Review (review_id, property_id, user_id, rating, comment, created_at)
VALUES
('r-501', 'p-201', 'u-101', 5, 'Fantastic location and very clean!', '2025-08-05 17:00:00'),
('r-502', 'p-202', 'u-101', 3, 'Nice view, but the place was a bit cold.', '2025-09-18 18:30:00');

INSERT INTO Message (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES
('m-601', 'u-101', 'u-102', 'Hi Emma, is the loft near public transport?', '2025-06-20 09:10:00'),
('m-602', 'u-102', 'u-101', 'Yes, it’s a 5-minute walk from the subway.', '2025-06-20 09:12:00');

