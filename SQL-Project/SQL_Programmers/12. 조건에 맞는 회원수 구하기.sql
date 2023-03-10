문제
몇 명인지 출력
2021년에 가입한 회원
나이 20세 이상 29세 이하

1. ANIMAL_INS 전체 테이블 출력
SELECT * FROM USER_INFO


2. 2021년에 가입한 회원 (subQuery 사용)
SELECT *
FROM (
        SELECT  AGE 	** AGE 출력을 요함으로 인하여 해당 컬럼 기재
                ,JOINED 
        FROM USER_INFO 
        WHERE JOINED    BETWEEN TO_DATE ('2021-01-01', 'YYYY-MM-DD')
                        AND TO_DATE ('2021-12-31', 'YYYY-MM-DD')    )


3. 나이 20세 이상 29세 이하
SELECT *
FROM (
        SELECT  AGE
                , JOINED
        FROM USER_INFO 
        WHERE JOINED    BETWEEN TO_DATE ('2021-01-01', 'YYYY-MM-DD')
                        AND TO_DATE ('2021-12-31', 'YYYY-MM-DD')    )
WHERE AGE BETWEEN 20 AND 29


4. 몇 명인지 출력 COUNT(*) 함수 사용
SELECT COUNT(*)
FROM (
        SELECT  AGE
                , JOINED
        FROM USER_INFO 
        WHERE JOINED    BETWEEN TO_DATE ('2021-01-01', 'YYYY-MM-DD')
                        AND TO_DATE ('2021-12-31', 'YYYY-MM-DD')    )
WHERE AGE BETWEEN 20 AND 29