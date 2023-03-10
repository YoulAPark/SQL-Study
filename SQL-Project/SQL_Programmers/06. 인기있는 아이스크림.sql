1. 전체 테이블 출력
SELECT * FROM FIRST_HALF

2. 아이스크림의 맛 출력
SELECT FLAVOR
FROM FIRST_HALF

3. 총 주문량 기준 내림차순 정렬 / 총 주문량이 같다면 출하 번호 기준 오름차순 정렬
SELECT FLAVOR
FROM FIRST_HALF
ORDER BY TOTAL_ORDER DESC, SHIPMENT_ID ASC