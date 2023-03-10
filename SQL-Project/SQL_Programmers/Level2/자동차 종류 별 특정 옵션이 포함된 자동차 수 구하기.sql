-- '통풍시트', '열선시트', '가죽시트' 중 하나 이상의 옵션이 포함된
-- => CAR_RENTAL_COMPANY_CAR : options LIKE '통풍시트' OR '열선시트' OR '가죽시트'
-- SELECT 수량 - 컬럼명 CARS
-- GROUP BY 자동차 종류 별로
-- ORDER BY 자동차 종류 별로 ASC

-- 1. CAR_RENTAL_COMPANY_CAR 테이블 전체 조회
SELECT * FROM CAR_RENTAL_COMPANY_CAR

-- 2. LIKE 문 사용하여 통풍시트, 열선시트, 가죽시트 구별하기
SELECT
*
  FROM CAR_RENTAL_COMPANY_CAR
 WHERE options LIKE '%시트%'

# 3. car_type, CARS 컬럼 출력
# SELECT 
# *
#  FROM CAR_RENTAL_COMPANY_CAR
# WHERE options LIKE '%시트%'
# GROUP BY car_type

-- 3. car_type, CARS 컬럼 출력하기
# SELECT car_type
#         , count(car_id) AS CARS
# FROM CAR_RENTAL_COMPANY_CAR
# WHERE options LIKE '%시트%'
# GROUP BY car_type

-- 4. ORDER BY car_type
# SELECT car_type
#         , count(car_id) AS CARS
# FROM CAR_RENTAL_COMPANY_CAR
# WHERE options LIKE '%시트%'
# GROUP BY car_type
# ORDER BY car_type ASC

# 통풍시트, 열선시트, 가죽시트 
# SELECT car_type
#         , count(car_id) AS CARS
# FROM CAR_RENTAL_COMPANY_CAR
# WHERE options LIKE '%통풍시트%' OR options LIKE '%열선시트%' OR options LIKE '%가죽시트%'
# GROUP BY car_type
# ORDER BY car_type ASC

SELECT car_type
        , count(car_id) AS CARS
FROM CAR_RENTAL_COMPANY_CAR
WHERE options REGEXP '시트'
GROUP BY car_type
ORDER BY car_type ASC