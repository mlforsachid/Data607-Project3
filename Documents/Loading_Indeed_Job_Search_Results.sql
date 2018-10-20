DROP TABLE IF EXISTS Indeed_Job_Search_Results;

CREATE TABLE Indeed_Job_Search_Results
(
Base_Skill varchar(15) NOT NULL,
Skill_Term varchar(8) NOT NULL,
City varchar (25) NOT NULL,
radius int NULL,
indeed_url varchar(250) NULL,
jobs_count int NULL
)
;

LOAD DATA LOCAL INFILE '/Users/Rob/Documents/MSDS/DATA 607/data/Indeed_Job_Search_Results.csv'
INTO TABLE Indeed_Job_Search_Results
FIELDS TERMINATED BY ','
OPTIONALLY ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
;
