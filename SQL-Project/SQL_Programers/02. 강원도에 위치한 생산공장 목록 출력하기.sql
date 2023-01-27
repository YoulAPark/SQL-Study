-- 1. FOOD_FACTORY 테이블 전체 출력
SELECT * FROM FOOD_FACTORY

-- 2. FOOD_FACTORY : 공장ID, 공장이름, 주소 출력
SELECT  FACTORY_ID
        , FACTORY_NAME
        , ADDRESS
FROM FOOD_FACTORY

-- 3. WHERE : 주소지 이름에 '강원도' 포함
SELECT  FACTORY_ID
        , FACTORY_NAME
        , ADDRESS
FROM FOOD_FACTORY
WHERE ADDRESS LIKE '%강원도%'

-- 4. FACTORY_ID 오름차순으로 출력
SELECT  FACTORY_ID
        , FACTORY_NAME
        , ADDRESS
FROM FOOD_FACTORY
WHERE ADDRESS LIKE '%강원도%'
ORDER BY FACTORY_ID ASC

-- 문제 해석
SELECT : '공장ID', '공장이름', '주소' 를 '오름차순'으로 출력 할 것
WHERE : 주소지 이름에 '강원도' 가 포함 된 기준
ORDER BY : '오름차순'

-- LIKE 함수
1. LIKE : SELECT (컬럼명) FROM 테이블명 WHERE 컬럼명 LIKE '%';
WHERE ADDRESS LIKE '%강원도%'
(1) 강원도로 시작하는 : '강원도%';
(2) 강원도로 끝나는 : '%강원도';
(3) 강원도가 들어가는 : '%강원도%';