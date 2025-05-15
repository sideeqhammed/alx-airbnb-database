
--- create user table
CREATE TABLE user (
  user_id VARCHAR(5) Primary KEY,
  first_name VARCHAR(20) NOT NULL,
  last_name VARCHAR(20) NOT NULL,
  email VARCHAR(30) UNIQUE NOT NULL,
  password_hash VARCHAR(20) NOT NULL,
  phone_number VARCHAR(20) NOT NULL,
  role VARCHAR(10) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--- create property table
CREATE TABLE property (
  property_id VARCHAR(5) Primary Key,
  host_id VARCHAR(5) NOT NULL,
  name VARCHAR(20) NOT NULL,
  description VARCHAR(50) NOT NULL,
  location VARCHAR(20) NOT NULL,
  pricepernight DECIMAL NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (host_id) REFERENCES user(user_id)
);

-- Create an index on the host_id for faster queries
CREATE INDEX idx_host_id ON Property (host_id);

--- create booking table
CREATE TABLE booking (
  booking_id VARCHAR(5) NOT NULL Primary Key,
  property_id VARCHAR(5) NOT NULL,
  user_id VARCHAR(5) NOT NULL,
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  total_price DECIMAL NOT NULL,
  status VARCHAR(10) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (property_id) REFERENCES property(property_id),
  FOREIGN KEY (user_id) REFERENCES user(User_id)
);

-- Create indexes for property_id and user_id for optimized query performance
CREATE INDEX idx_property_id ON Booking(property_id);
CREATE INDEX idx_user_id ON Booking(user_id);

--- create payment table
CREATE TABLE payment (
	payment_id VARCHAR(5) NOT NULL Primary Key,
	booking_id VARCHAR(5) NOT NULL,
	amount DECIMAL NOT NULL,
	payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	payment_method VARCHAR(5) NOT NULL,
	FOREIGN KEY (booking_id) REFERENCES booking(booking_id)
);
-- Create an index on booking_id for optimized query performance
CREATE INDEX idx_booking_id ON Payment(booking_id);

--- create review table
CREATE TABLE review (
	review_id VARCHAR(5) NOT NULL Primary Key,
	property_id VARCHAR(5) NOT NULL,
	user_id VARCHAR(5) NOT NULL,
	rating INT NOT NULL,
	comment TEXT NOT NULL,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (property_id) REFERENCES Property(property_id)
);

-- Create indexes for property_id and user_id for optimized query performance
CREATE INDEX idx_property_id ON Review(property_id);
CREATE INDEX idx_user_id_review ON Review (user_id);

--- create message table
CREATE TABLE Message (
	message_id: Primary Key, UUID, Indexed,
	sender_id: Foreign Key, references User(user_id),
	recipient_id: Foreign Key, references User(user_id),
	message_body: TEXT, NOT NULL,
	sent_at: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (sender_id) REFERENCES User(user_id),
	FOREIGN KEY (recipient_id) REFERENCES User(user_id),
);

-- Create indexes for sender_id and recipient_id for optimized query performance
CREATE INDEX idx_sender_id ON Message (sender_id);
CREATE INDEX idx_recipient_id ON Message (recipient_id);

