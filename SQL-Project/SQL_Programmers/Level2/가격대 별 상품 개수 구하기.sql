-- SELECT PRICE_GROUP AS 10000, PRODUCTS 
-- GROUP BY 만원 단위 가격대 별 상품 개수
-- 가격대 기준 오름차순 정렬

# [정답]
# SELECT
#     (CASE
#         WHEN 10000<=price AND price<20000 THEN '10000'
#         WHEN 20000<=price AND price<30000 THEN '20000'
#         WHEN 30000<=price AND price<40000 THEN '30000'
#         WHEN 40000<=price AND price<50000 THEN '40000'
#         WHEN 50000<=price AND price<60000 THEN '50000'
#         WHEN 60000<=price AND price<70000 THEN '60000'
#         WHEN 70000<=price AND price<80000 THEN '70000'
#         WHEN 80000<=price AND price<90000 THEN '80000'
#     END) AS PRICE_GROUP
#     , COUNT(product_id) AS PRODUCTS
# FROM PRODUCT
# GROUP BY PRICE_GROUP
# ORDER BY PRICE_GROUP ASC

# SELECT TRUNCATE(price, -4) AS PRICE_GROUP
#         , COUNT(product_id) AS PRODUCTS
# FROM PRODUCT
# GROUP BY PRICE_GROUP
# ORDER BY PRICE_GROUP ASC


SELECT product_code,
    CASE 
        WHEN product_code LIKE 'A%' THEN 'A로 시작'
        WHEN product_code LIKE 'B%' THEN 'B로 시작'
        WHEN product_code LIKE 'C%' THEN 'C로 시작'
        WHEN producT_code LIKE 'D%' THEN 'D로 시작'
        ELSE '기타'
    END
    AS 시작하는_알파벳
FROM PRODUCT
GROUP BY 시작하는_알파벳