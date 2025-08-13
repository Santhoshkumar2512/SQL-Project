use db;
-- Create the 'lead' table
CREATE TABLE lead (
    lead_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    phone_number VARCHAR(20),
    company VARCHAR(100),
    status VARCHAR(20) DEFAULT 'New',
    created_date DATE NOT NULL
);

-- Insert 5 rows of data into the 'lead' table
INSERT INTO lead (lead_id, first_name, last_name, email, phone_number, company, status, created_date) VALUES
(201, 'Rahul', 'Gupta', 'rahul.g@techsolutions.com', '9876543210', 'Tech Solutions', 'New', '2025-08-10'),
(202, 'Anita', 'Desai', 'anita.d@innovatecorp.com', '8765432109', 'Innovate Corp', 'Contacted', '2025-08-11'),
(203, 'Sameer', 'Verma', 'sameer.v@digitalweb.net', '7654321098', 'Digital Web', 'Qualified', '2025-08-05'),
(204, 'Pooja', 'Iyer', 'pooja.i@globaldata.io', '6543210987', 'Global Data', 'New', '2025-08-12'),
(205, 'Arjun', 'Nair', 'arjun.n@cloudsystems.com', '5432109876', 'Cloud Systems', 'Lost', '2025-08-01');