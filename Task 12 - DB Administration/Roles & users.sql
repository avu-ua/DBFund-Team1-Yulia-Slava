-- Create 2 Roles

CREATE ROLE manager WITH CREATEROLE LOGIN

CREATE ROLE operator WITH LOGIN PASSWORD 'rvK$%&pnH_'  VALID UNTIL '2024-01-01'


-- Assign Users to the above Roles

GRANT manager TO volodymyr

GRANT operator TO valeriy