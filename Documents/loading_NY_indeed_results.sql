DROP TABLE IF EXISTS NY_indeed_results;

CREATE TABLE NY_indeed_results
(
skill varchar(10) NOT NULL,
count int NOT NULL
)
;

LOAD DATA LOCAL INFILE '/Users/Rob/Documents/MSDS/DATA 607/data/NY_indeed_results.csv'
INTO TABLE NY_indeed_results
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY ''''
LINES TERMINATED BY '\n'
IGNORE 1 ROWS
;

SET SQL_SAFE_UPDATES = 0;

UPDATE NY_indeed_results
SET skill = TRIM(BOTH '"' FROM skill);


