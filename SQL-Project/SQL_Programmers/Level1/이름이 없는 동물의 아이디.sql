# 1. 이름이 없는 동물 
# 2. SELECT animal_id
# 3. ORDER BY animal_id ASC

SELECT animal_id
FROM ANIMAL_INS
WHERE name IS NULL
ORDER BY animal_id ASC