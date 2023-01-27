문제
BOOK_ID, PUBLISHED_DATE 출력
2021년에 출판
'인문' 카테고리
출판일 기준 오름차순

1. BOOK 테이블 전체 조회
SELECT * FROM BOOK


2. BOOK_ID, PUBLISHED_DATE 출력
SELECT  BOOK_ID
        , TO_CHAR (PUBLISHED_DATE, 'YYYY-MM-DD')
FROM BOOK


3. 출판연도 : 2021년
SELECT  BOOK_ID
        , TO_CHAR (PUBLISHED_DATE, 'YYYY-MM-DD')
FROM BOOK
WHERE PUBLISHED_DATE    
    BETWEEN TO_DATE('2021-01-01', 'YYYY-MM-DD') 
        AND TO_DATE('2021-12-31', 'YYYY-MM-DD') 


4. 카테고리 : 인문
SELECT  BOOK_ID
        , TO_CHAR (PUBLISHED_DATE, 'YYYY-MM-DD')
FROM BOOK
WHERE PUBLISHED_DATE    
    BETWEEN TO_DATE('2021-01-01', 'YYYY-MM-DD') 
        AND TO_DATE('2021-12-31', 'YYYY-MM-DD') 
        AND CATEGORY = '인문'


5. 오름차순 : 출판일자 기준
SELECT  BOOK_ID
        , TO_CHAR (PUBLISHED_DATE, 'YYYY-MM-DD')
FROM BOOK
WHERE PUBLISHED_DATE    
    BETWEEN TO_DATE('2021-01-01', 'YYYY-MM-DD') 
        AND TO_DATE('2021-12-31', 'YYYY-MM-DD') 
        AND CATEGORY = '인문'
ORDER BY PUBLISHED_DATE ASC


-- WHERE절에서의 DATE 일자 조건주기

-- XXXX-XX-XX 일자부터 YYYY-YY-YY 일자 까지의 조회
BETWEEN a AND b

WHERE 컬럼명 BETWEEN TO_DATE('XXXX-XX-XX', 'YYYY-MM-DD')
				AND TO_DATE('YYYY-YY-YY', 'YYYY-MM-DD')
				
-- Example 1. 1990년도 출생일자를 구하라 [컬럼명 : birth]

WHERE birth	BETWEEN TO_DATE('1990-01-01', 'YYYY-MM-DD')
			AND TO_DATE('1990-12-31', 'YYYY-MM-DD')

-- Example 2. 1993년 05월생을 출력하라 [컬럼명 : birth]

WHERE birth BETWEEN TO_DATE('1993-05-01', 'YYYY-MM-DD')
			AND TO_DATE('1993-05-31', 'YYYY-MM-DD')