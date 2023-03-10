문제
아이스크림의 총 주문량 3,000 이상
아이스크림 주 성분 과일
총 주문량이 높은 순서대로 조회

1. FIRST_HALF 테이블 전체 출력
SELECT 
* 
FROM FIRST_HALF


2. ICECREAM_INFO 테이블 전체 출력
SELECT 
* 
FROM ICECREAM_INFO


3. FIRST_HALF 테이블의 flavor 기준으로 출력
SELECT flavor
FROM FIRST_HALF


4. FIRST_HALF 테이블의 total_order가 3000이상인 경우 출력
SELECT flavor
FROM FIRST_HALF
WHERE total_order >= 3000


5. ICECREAM_INFO 테이블의 ingredient_type이 fruit_based일 경우
SELECT flavor 
FROM ICECREAM_INFO
WHERE ingredient_type = 'fruit_based'


6. total_order가 3000이상이면서, ingredient_type이 fruit_based일 경우
SELECT fh.flavor
FROM FIRST_HALF fh  LEFT JOIN ICECREAM_INFO ii ON fh.flavor = ii.flavor
WHERE fh.total_order >=3000 AND ii.ingredient_type = 'fruit_based'


7. 위의 결과 값에서 total_order를 DESC 순으로
SELECT fh.flavor
FROM FIRST_HALF fh LEFT JOIN ICECREAM_INFO ii ON fh.flavor = ii.flavor
WHERE fh.total_order >=3000 AND ii.ingredient_type = 'fruit_based'
ORDER BY fh.total_order DESC
