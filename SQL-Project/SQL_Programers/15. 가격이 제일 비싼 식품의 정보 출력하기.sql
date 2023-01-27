문제
가격이 가장 높은 식품 출력

1. FOOD_PRODUCT 테이블 전체 조회
SELECT * FROM FOOD_PRODUCT

2. 가격 높은순 출력
SELECT MAX(datetime)
FROM ANIMAL_INS

3. 상위 1개 출력
SELECT *
FROM (  SELECT * 
        FROM FOOD_PRODUCT 
        ORDER BY price DESC   )
WHERE ROWNUM <= 1
