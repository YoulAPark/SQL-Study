# SELECT * FROM ANIMAL_INS 

# 1. 생물종, 이름, 성별 및 중성화여부
# 2. 아이디 순 ASC
# 3. null 대신 No name

SELECT animal_type
        , IFNULL(name, 'No name')
        , sex_upon_intake
FROM ANIMAL_INS
ORDER BY animal_id ASC