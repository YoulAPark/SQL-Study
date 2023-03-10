-- 코드를 입력하세요
# SELECT

-- SELECT 시간대 별, 입양 count
-- WHERE 시간 : 09:00~19:59
-- ORDER BY 시간대 순으로

-- 1. ANIMAL_OUTS 전체 테이블 출력
# SELECT
# *
#   FROM ANIMAL_OUTS

-- 2. WHERE 시간 분류
# SELECT
# *
#   FROM ANIMAL_OUTS
#   WHERE datetime 
#     BETWEEN DATE_FORMAT(datetime, '%Y-%m-%d 09:00:00') AND DATE_FORMAT(datetime, '%Y-%m-%d 19:59:59')

-- 3. ORDER BY
# SELECT HOUR(datetime) AS hour
#       ,COUNT(datetime) AS count
#   FROM ANIMAL_OUTS
#   WHERE datetime 
#     BETWEEN DATE_FORMAT(datetime, '%Y-%m-%d 09:00:00') AND DATE_FORMAT(datetime, '%Y-%m-%d 19:59:59')
# GROUP BY hour
# ORDER BY hour

-- 1. 09:00부터 19:59까지 시간 정해놓기
SELECT ANIMAL_ID AS 동물아이디
        , DATETIME AS 입양일
        , NAME AS 이름
  FROM ANIMAL_OUTS
  WHERE datetime 
    BETWEEN DATE_FORMAT(datetime, '%Y-%m-%d 09:00:00') AND DATE_FORMAT(datetime, '%Y-%m-%d 19:59:59')

-- 2. 시간별로 그룹화하기
# SELECT HOUR(datetime) AS hour
#     ,COUNT(datetime) AS count
#   FROM ANIMAL_OUTS
#   # WHERE datetime 
#   #   BETWEEN DATE_FORMAT(datetime, '%Y-%m-%d 09:00:00') AND DATE_FORMAT(datetime, '%Y-%m-%d 19:59:59')
#   WHERE HOUR(datetime) BETWEEN 09 AND 20
# GROUP BY hour
# ORDER BY hour