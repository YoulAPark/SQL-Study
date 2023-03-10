# 1. GROUP BY INGREDIENT_TYPE - 아이스크림 성분에 따라 나누기
# 2. COUNT shipment_id AS TOTAL_ORDER - 성분에 따라 나눈 아이스크림 수량 세기
# 3. ORDER BY 총주문량 작은 순서대로

# 1. ICECREAM_INFO 테이블 전체 출력
# SELECT * FROM ICECREAM_INFO

# 2. FIRST_HALF 테이블 전체 출력
# SELECT * FROM FIRST_HALF 

# 3. LEFT JOIN
# SELECT
# *
# FROM ICECREAM_INFO ii
#     LEFT JOIN FIRST_HALF fh ON ii.flavor = fh.flavor

# 4. GROUP BY INGREDIENT_TYPE - 아이스크림 성분에 따라 나누기
# SELECT
# *
# FROM ICECREAM_INFO ii
#     LEFT JOIN FIRST_HALF fh ON ii.flavor = fh.flavor
# GROUP BY ii.ingredient_type

# 5. 성분, 성분 총주문량 출력
# SELECT ii.ingredient_type
#         , sum(fh.total_order) AS TOTAL_ORDER
# FROM ICECREAM_INFO ii
#     LEFT JOIN FIRST_HALF fh ON ii.flavor = fh.flavor
# GROUP BY ii.ingredient_type

# 6.ORDER BY 총주문량 작은 순서대로
SELECT ii.ingredient_type
        , sum(fh.total_order) AS TOTAL_ORDER
FROM ICECREAM_INFO ii
    LEFT JOIN FIRST_HALF fh ON ii.flavor = fh.flavor
GROUP BY ii.ingredient_type
ORDER BY fh.TOTAL_ORDER ASC

# SELECT ii.ingredient_type
#         , sum(fh.total_order)
#  FROM ICECREAM_INFO ii
#     LEFT JOIN FIRST_HALF fh ON ii.flavor = fh.flavor
# GROUP BY ii.ingredient_type