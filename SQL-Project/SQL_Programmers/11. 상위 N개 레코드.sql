문제
NAME 출력
가장 먼저 들어온 동물
1개만 출력

1. ANIMAL_INS 전체 테이블 출력
SELECT * FROM ANIMAL_INS


2. NAME 출력
SELECT NAME
FROM ANIMAL_INS


3. 보호시작일이 가장 빠른 순서대로 출력
SELECT  NAME
FROM ( SELECT * FROM ANIMAL_INS ORDER BY DATETIME ASC )


4. 상위 1개만 출력
SELECT  NAME
FROM ( SELECT * FROM ANIMAL_INS ORDER BY DATETIME ASC )
WHERE ROWNUM <= 1


-- SubQuery 사용
-- Oracle N개의 데이터 출력

-- (1) 우선, 데이터 정렬 => SubQuery 사용

SELECT 	empNo
		, eName
        , sal
FROM ( SELECT 	empNo
				, eName
                , sal
       FROM emp
       ORDER BY sal DESC
     )

-- (2) 원하는 개수만큼 데이터를 추출 => ROWNUM

SELECT 	empNo
		, eName
        , sal
FROM ( SELECT 	empNo
				, eName
                , sal
       FROM emp
       ORDER BY sal DESC
     )
WHERE ROWNUM <= 3