# 1. 경기도에 위치한
# 2. SELECT 창고ID, 이름, 주소, 냉동시설 여부
# 3. WHERE 냉동시설여부 NULL일 경우 'N'출력
# 4. 창고ID기준 ASC

# 💡 IFNULL(column명, null일경우 대체할 값) 

-- 1. 전체 출력
# SELECT * FROM FOOD_WAREHOUSE

-- 2. 경기도에 위치한 데이터만 출력하기
SELECT warehouse_id
        , warehouse_name
        , address
        , IFNULL(freezer_yn, 'N')
FROM FOOD_WAREHOUSE
WHERE address LIKE '%경기도%'
ORDER BY warehouse_id ASC


# SELECT warehouse_id
#         , warehouse_name
#         , address
#         , IFNULL(freezer_YN, 'N')
# FROM FOOD_WAREHOUSE
# WHERE ADDRESS LIKE ('%경기도%')
# ORDER BY warehouse_id ASC