-- ## 문제 해석##
-- 1. WHERE 2022-05 예약한 환자
-- 2. COUNT (환자 몇 명?(환자수))
-- 3. GROUP BY 진료과코드
-- 4. 컬럼명 : '진료과 코드', '5월예약건수'
-- 5. ORDER BY 환자수 ASC, 진료과 코드 ASC

-- 1. APPOINTMENT 테이블 전체 출력
# SELECT * FROM APPOINTMENT

-- 2. 2022년 5월에 예약한 5월예약건수 AND mcdp_cd Alias 명명하여 출력
# SELECT  mcdp_cd AS 진료과코드
#         , COUNT(mcdp_cd) AS 5월예약건수
# FROM APPOINTMENT 
# WHERE YEAR(apnt_ymd) = '2022' AND MONTH(apnt_ymd) = '05'
# GROUP BY mcdp_cd

-- 4. apnt_ymd가 2022-05월인
# SELECT  mcdp_cd AS 진료과코드
#         , COUNT(mcdp_cd) AS 5월예약건수
# FROM APPOINTMENT 
# WHERE YEAR(apnt_ymd) = '2022' AND MONTH(apnt_ymd) = '05'
# GROUP BY mcdp_cd
# ORDER BY 5월예약건수 ASC, 진료과코드 ASC

SELECT SECOND('2023-02-28 13:27:45')