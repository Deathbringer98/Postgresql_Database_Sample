-- Update customers to reference a new or existing address
UPDATE customer
SET address_id = 1  -- Replace with the desired address_id
WHERE address_id = 1;

-- Delete the old address record
DELETE FROM customer
WHERE address_id = 1;
