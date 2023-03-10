-- 1. CAR_TYPE이 'SUV'인 차량들 전체 출력
SELECT
*
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = 'SUV'

-- 2. CAR_TYPE 이 'SUV'인 차량들의 DAILY_FEE 전체 합계
SELECT SUM(DATILY_FEE)
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = 'SUV'

-- 3. CAR_TYPE이 'SUV'인 차량들의 수량 조회 = COUNT(*)
SELECT count(*)
FROM CAR_RENTAL_COMPANY_CAR
WHERE CAR_TYPE = 'SUV';

-- 4. 제출
SELECT ROUND( SUM(DAILY_FEE) / count(*) ) AS AVERAGE_FEE
FROM CAR_RENTAL_COMPANY_CAR 
WHERE CAR_TYPE = 'SUV';

-- 문제 해석
-- 1. SELECT : 자동차들의 '평균' '일일 대여 요금'을 '소수 첫번째 자리에서 반올림' 하여 'AVERAGE_FEE' 컬럼명으로 출력할 것
-- 2. WHERE : 'SUV' 만

-- 집계함수에 대하여
-- 1. COUNT : SELECT count(컬럼명) FROM 테이블명;
SELECT count(car_id) 
FROM CAR_RENTAL_COMPANY_CAR 
WHERE CAR_TYPE = 'SUV'

-- 2. SUM : SELECT (컬럼명) FROM 테이블명;
SELECT ( SUM(DAILY_FEE) / COUNT(car_id) )  
FROM CAR_RENTAL_COMPANY_CAR 
WHERE CAR_TYPE = 'SUV'