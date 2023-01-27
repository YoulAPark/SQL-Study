문제
가장 높은 price 상품 출력

1. PRODUCT 테이블 전체 조회
SELECT * FROM PRODUCT

2. 가장 높은 판매가의 상품 출력
SELECT MAX(price) AS MAX_PRICE
FROM PRODUCT
