-- 1. SELECT animal_type, count
-- 2. WHERE animal_type = 고양이, 개
-- 3. ORDER BY animal_type 고양이 > 개

-- 1. ANIMAL_INS 테이블 전체 출력
# SELECT 
# * 
#   FROM ANIMAL_INS

-- 2. GROUP BY animal_type
# SELECT 
# * 
#   FROM ANIMAL_INS
#   GROUP BY animal_type

-- 3. animal_type, count 출력
# SELECT  animal_type
#       , COUNT(animal_id) AS count
#   FROM ANIMAL_INS
#   GROUP BY animal_type

-- 4. order by 고양이 먼저
SELECT  animal_type
      , COUNT(animal_id) AS count
  FROM ANIMAL_INS
  GROUP BY animal_type
  ORDER BY animal_type ASC