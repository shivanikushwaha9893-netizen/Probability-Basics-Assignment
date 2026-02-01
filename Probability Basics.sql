CREATE TABLE dice(value INT);
INSERT INTO dice VALUES (1),(2),(3),(4),(5),(6);

-- Q1 Even
SELECT COUNT(*)*1.0/(SELECT COUNT(*) FROM dice) AS even_probability
FROM dice WHERE value%2=0;

-- Q1 Greater than 4
SELECT COUNT(*)*1.0/(SELECT COUNT(*) FROM dice) AS greater_than_4
FROM dice WHERE value>4;


CREATE TABLE subjects(total INT, math INT, science INT, both INT);
INSERT INTO subjects VALUES(50,20,15,5);

-- Q2 Math OR Science
SELECT (math+science-both)*1.0/total AS probability
FROM subjects;


-- Q3 Red balls
SELECT (2.0/4) AS probability_next_red;


-- Q4 Sampling
SELECT 'Stratified Sampling' AS best_method;


-- Q5 Sampling error
SELECT 158-160 AS sampling_error;


-- Q6 SEM
SELECT 5000/SQRT(100) AS SEM;


CREATE TABLE sports(total INT, cricket INT, football INT, both INT);
INSERT INTO sports VALUES(100,40,30,10);

-- Q7 At least one sport
SELECT (cricket+football-both)*1.0/total AS probability
FROM sports;


-- Q8 Two aces
SELECT (4.0/52)*(3.0/51) AS probability_two_aces;


-- Q9 Bulbs
SELECT POWER(0.98,5) AS probability_all_good;


-- Q10 Discrete vs Continuous
SELECT
'Discrete: countable values like number of students. Continuous: measurable values like height or weight.'
AS answer;
