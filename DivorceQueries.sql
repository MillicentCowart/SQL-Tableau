--DO THE FIVE A'S LEAD TO HELTHY MARRIAGE 

--What is the overall divorce rate? About 51% of these couples are divorced.
SELECT Class, COUNT(*) AS Class_count, count(*) * 100.0 / sum(count(*)) over() as ClassCountPercent
FROM divorce..status
GROUP BY Class



-- SECTION ONE: ACCEPTANCE

-- What are the responses to the prompt, "If a spouse apologizes when the discussion deteriorates, the discussion ends."?
SELECT Atr1, COUNT(*) AS Atr1_count, count(*) * 100.0 / sum(count(*)) over() as ClassCountPercent
FROM divorce..status
GROUP BY Atr1

SELECT Atr1, COUNT(*) AS Atr1_count, COUNT(CASE WHEN Class = 1 THEN 1 END) as Atr1_married, ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1) as Atr1_married_percent,
(100 - ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1)) as Atr1_divorced_percent
from divorce..status
group by Atr1;



-- What are the responses to the prompt, "Ignore differences even when things get hard."?
SELECT Atr2, COUNT(*) AS Atr2_count, count(*) * 100.0 / sum(count(*)) over() as ClassCountPercent
FROM divorce..status
GROUP BY Atr2

SELECT Atr2, COUNT(*) AS Atr2_count, COUNT(CASE WHEN Class = 1 THEN 1 END) as Atr2_married, ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1) as Atr2_married_percent,
(100 - ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1)) as Atr2_divorced_percent
from divorce..status
group by Atr2;

-- What are the responses to the prompt, "Expressions are used such as 'you always' or 'you never'"?
SELECT Atr32, COUNT(*) AS Atr32_count, count(*) * 100.0 / sum(count(*)) over() as ClassCountPercent
FROM divorce..status
GROUP BY Atr32

SELECT Atr32, COUNT(*) AS Atr32_count, COUNT(CASE WHEN Class = 1 THEN 1 END) as Atr32_married, ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1) as Atr32_married_percent,
(100 - ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1)) as Atr32_divorced_percent
from divorce..status
group by Atr32;


--View all average answers to these quesions:
SELECT COUNT(*) AS Atr1_count, COUNT(CASE WHEN Class = 1 THEN 1 END) as Atr1_married, ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1) as Atr1_married_percent,
(100 - ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1)) as Atr1_divorced_percent
from divorce..status
where Atr1=2;
SELECT COUNT(*) AS Atr2_count, COUNT(CASE WHEN Class = 1 THEN 1 END) as Atr2_married, ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1) as Atr2_married_percent,
(100 - ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1)) as Atr2_divorced_percent
from divorce..status
where Atr2=2;
SELECT COUNT(*) AS Atr32_count, COUNT(CASE WHEN Class = 1 THEN 1 END) as Atr32_married, ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1) as Atr32_married_percent,
(100 - ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1)) as Atr32_divorced_percent
from divorce..status
where Atr32=2;

--View frequent responses:
SELECT COUNT(*) AS Atr1_count, COUNT(CASE WHEN Class = 1 THEN 1 END) as Atr1_married, ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1) as Atr1_married_percent,
(100 - ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1)) as Atr1_divorced_percent
from divorce..status
where Atr1=3;
SELECT COUNT(*) AS Atr32_count, COUNT(CASE WHEN Class = 1 THEN 1 END) as Atr32_married, ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1) as Atr32_married_percent,
(100 - ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1)) as Atr32_divorced_percent
from divorce..status
where Atr32=3;




-- SECTION TWO: ATTENTION


-- What are the responses to the prompt, "When we need it, we can take our discussion from the beginning and correct it."?
SELECT Atr3, COUNT(*) AS Atr3_count, count(*) * 100.0 / sum(count(*)) over() as ClassCountPercent
FROM divorce..status
GROUP BY Atr3

SELECT Atr3, COUNT(*) AS Atr3_count, COUNT(CASE WHEN Class = 1 THEN 1 END) as Atr3_married, ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1) as Atr3_married_percent,
(100 - ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1)) as Atr3_divorced_percent
from divorce..status
group by Atr3;

-- What are the responses to the prompt, "I know exactly what my spouse likes."?
SELECT Atr21, COUNT(*) AS Atr21_count, count(*) * 100.0 / sum(count(*)) over() as ClassCountPercent
FROM divorce..status
GROUP BY Atr21

SELECT Atr21, COUNT(*) AS Atr21_count, COUNT(CASE WHEN Class = 1 THEN 1 END) as Atr21_married, ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1) as Atr21_married_percent,
(100 - ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1)) as Atr21_divorced_percent
from divorce..status
group by Atr21;

-- What are the responses to the prompt, "I know my spouses basic anxieties."?
SELECT Atr26, COUNT(*) AS Atr26_count, count(*) * 100.0 / sum(count(*)) over() as ClassCountPercent
FROM divorce..status
GROUP BY Atr26

SELECT Atr26, COUNT(*) AS Atr26_count, COUNT(CASE WHEN Class = 1 THEN 1 END) as Atr26_married, ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1) as Atr26_married_percent,
(100 - ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1)) as Atr26_divorced_percent
from divorce..status
group by Atr26;




--SECTION THREE: AFFECTION


-- What are the responses to the prompt, "The time we spend together is special to us."?
SELECT Atr5, COUNT(*) AS Atr5_count, count(*) * 100.0 / sum(count(*)) over() as ClassCountPercent
FROM divorce..status
GROUP BY Atr5

SELECT Atr5, COUNT(*) AS Atr5_count, COUNT(CASE WHEN Class = 1 THEN 1 END) as Atr5_married, ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1) as Atr5_married_percent,
(100 - ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1)) as Atr5_divorced_percent
from divorce..status
group by Atr5;

-- What are the responses to the prompt, "We are like two strangers who share the same environment at home rather than a family."?
SELECT Atr7, COUNT(*) AS Atr7_count, count(*) * 100.0 / sum(count(*)) over() as ClassCountPercent
FROM divorce..status
GROUP BY Atr7

SELECT Atr7, COUNT(*) AS Atr7_count, COUNT(CASE WHEN Class = 1 THEN 1 END) as Atr7_married, ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1) as Atr7_married_percent,
(100 - ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1)) as Atr7_divorced_percent
from divorce..status
group by Atr7;

-- What are the responses to the prompt, "I know how my spouse likes to be taken care of when they are sick."?
SELECT Atr22, COUNT(*) AS Atr22_count, count(*) * 100.0 / sum(count(*)) over() as ClassCountPercent
FROM divorce..status
GROUP BY Atr22

SELECT Atr22, COUNT(*) AS Atr22_count, COUNT(CASE WHEN Class = 1 THEN 1 END) as Atr22_married, ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1) as Atr22_married_percent,
(100 - ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1)) as Atr22_divorced_percent
from divorce..status
group by Atr22;


-- SECTION FOUR: ALLOWING


-- What are the responses to the prompt, "My spouse and I have similar values in terms of personal freedom."?
SELECT Atr12, COUNT(*) AS Atr12_count, count(*) * 100.0 / sum(count(*)) over() as ClassCountPercent
FROM divorce..status
GROUP BY Atr12

SELECT Atr12, COUNT(*) AS Atr12_count, COUNT(CASE WHEN Class = 1 THEN 1 END) as Atr12_married, ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1) as Atr12_married_percent,
(100 - ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1)) as Atr12_divorced_percent
from divorce..status
group by Atr12;

-- What are the responses to the prompt, "My spouse and I have similar values in trust."?
SELECT Atr20, COUNT(*) AS Atr20_count, count(*) * 100.0 / sum(count(*)) over() as ClassCountPercent
FROM divorce..status
GROUP BY Atr20

SELECT Atr20, COUNT(*) AS Atr20_count, COUNT(CASE WHEN Class = 1 THEN 1 END) as Atr20_married, ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1) as Atr20_married_percent,
(100 - ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1)) as Atr20_divorced_percent
from divorce..status
group by Atr20;

-- What are the responses to the prompt, "My spouse and I have similar ideas about how marriage should be."?
SELECT Atr18, COUNT(*) AS Atr18_count, count(*) * 100.0 / sum(count(*)) over() as ClassCountPercent
FROM divorce..status
GROUP BY Atr18

SELECT Atr18, COUNT(*) AS Atr18_count, COUNT(CASE WHEN Class = 1 THEN 1 END) as Atr18_married, ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1) as Atr18_married_percent,
(100 - ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1)) as Atr18_divorced_percent
from divorce..status
group by Atr18;


-- SECTION FIVE: APPRECIATION

-- What are the responses to the prompt, "I can insult my spouse durring our discussions."?
SELECT Atr35, COUNT(*) AS Atr35_count, count(*) * 100.0 / sum(count(*)) over() as ClassCountPercent
FROM divorce..status
GROUP BY Atr35

SELECT Atr35, COUNT(*) AS Atr35_count, COUNT(CASE WHEN Class = 1 THEN 1 END) as Atr35_married, ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1) as Atr35_married_percent,
(100 - ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1)) as Atr35_divorced_percent
from divorce..status
group by Atr35;

-- What are the responses to the prompt, "I'm not afraid to tell my spouse about their inadequacy."?
SELECT Atr52, COUNT(*) AS Atr52_count, count(*) * 100.0 / sum(count(*)) over() as ClassCountPercent
FROM divorce..status
GROUP BY Atr52

SELECT Atr52, COUNT(*) AS Atr52_count, COUNT(CASE WHEN Class = 1 THEN 1 END) as Atr52_married, ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1) as Atr52_married_percent,
(100 - ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1)) as Atr52_divorced_percent
from divorce..status
group by Atr52;

-- What are the responses to the prompt, "I'm not afraid to tell my spouse about their incompetence."?
SELECT Atr54, COUNT(*) AS Atr54_count, count(*) * 100.0 / sum(count(*)) over() as ClassCountPercent
FROM divorce..status
GROUP BY Atr54

SELECT Atr54, COUNT(*) AS Atr54_count, COUNT(CASE WHEN Class = 1 THEN 1 END) as Atr54_married, ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1) as Atr54_married_percent,
(100 - ROUND(COUNT(CASE WHEN Class = 1 THEN 1 END)*100.0/COUNT(*),1)) as Atr54_divorced_percent
from divorce..status
group by Atr54;