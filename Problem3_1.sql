-- Insert new customers with the same last name to the same store and address
INSERT INTO customer (store_id, first_name, last_name, email, address_id, active)
VALUES
    (1, 'John', 'Doe', 'john.doe@email.com', 1, 1),
    (1, 'Jane', 'Doe', 'jane.doe@email.com', 1, 1),
    (1, 'Jim', 'Doe', 'jim.doe@email.com', 1, 1);
