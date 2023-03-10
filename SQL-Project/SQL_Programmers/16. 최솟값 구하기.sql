문제
들어온 일자 datetime 구하기
가장 먼저 들어온 동물 구하기

1. ANIMAL_INS 테이블 전체 조회
SELECT * FROM ANIMAL_INS

2. datetime 컬럼 출력 (언제 들어왔는지)
SELECT datetime
FROM ANIMAL_INS

3. datetime ASC 차순 출력 (SubQuery사용)
SELECT datetime
FROM (  SELECT * 
		FROM ANIMAL_INS 
        ORDER BY datetime ASC )

4. 가장 먼저들어온 동물 한 마리 출력
SELECT datetime
FROM (  SELECT * 
        FROM ANIMAL_INS 
        ORDER BY datetime ASC )
WHERE ROWNUM <= 1