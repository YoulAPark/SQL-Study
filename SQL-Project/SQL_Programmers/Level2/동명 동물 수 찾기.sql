-- 코드를 입력하세요
# SELECT * FROM ANIMAL_INS

# SELECT name
#     , COUNT(name) AS CNT
# FROM ANIMAL_INS
# WHERE name is NOT NULL
# GROUP BY name
# order by name asc

-- 1. 두 번 이상 쓰인 이름
# SELECT  name
#       , COUNT(name) AS cnt
# FROM ANIMAL_INS
# GROUP BY name
# HAVING cnt > 1
# ORDER BY NAME ASC

-- 2.
SELECT  name
      , COUNT(name) AS cnt
FROM ANIMAL_INS
WHERE name is NOT NULL
GROUP BY name
# HAVING cnt > 1      
# ORDER BY NAME ASC