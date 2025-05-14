SELECT property.name
FROM property
WHERE property_id IN (
  SELECT review.property_id
  FROM review
  WHERE AVG(rating) > 4.0
);

SELECT property.name
FROM property
WHERE property_id IN (
  SELECT review.property_id
  FROM review
  WHERE review_id > 3
);
