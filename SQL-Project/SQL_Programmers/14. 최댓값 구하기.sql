문제
가장 최근에 들어온 동물의 datetime 출력

1. ANIMAL_INS 테이블 전체 조회
SELECT * FROM ANIMAL_INS

2. 가장 최근에 들어온 동물의 datetime 출력
SELECT MAX(datetime)
FROM ANIMAL_INS
