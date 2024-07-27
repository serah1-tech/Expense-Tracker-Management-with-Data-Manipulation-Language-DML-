-- Addding new expense 
INSERT INTO expenses (category, description, amount, date)
VALUES ('Groceries', 'Weekly groceries', 50.00, '2024-07-27');

-- update an existing expense record (e.g., changing the amount of the expense with id = 1)
UPDATE expenses
SET amount = 25.00, date = '2024-07-28', category = 'Groceries'
WHERE id = 1;

-- Simulating Data Deletion
CREATE TABLE expenses_copy AS SELECT * FROM expenses;
DELETE FROM expenses_copy
WHERE id = 2;

-- To check for NULL values:
SELECT * FROM expenses
WHERE category IS NULL OR description IS NULL OR amount IS NULL OR date IS NULL;

-- To handle NULL values, you can use conditional updates or set default values. 
UPDATE expenses
SET category = 'Uncategorized'
WHERE category IS NULL;
