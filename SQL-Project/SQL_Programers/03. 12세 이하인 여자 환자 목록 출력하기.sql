-- 1. PATIENT 테이블 전체 출력
SELECT * FROM PATIENT;

-- 2. FOOD_FACTORY : 환자이름, 환자번호, 성별코드, 나이, 전화번호 출력
SELECT PT_NAME
        , PT_NO
        , GEND_CD
        , AGE
        , TLNO
FROM PATIENT

-- 3. WHERE : 12세 이하, 여성 출력
SELECT PT_NAME
        , PT_NO
        , GEND_CD
        , AGE
        , TLNO
FROM PATIENT
WHERE GEND_CD='W' AND AGE <= 12

-- 4. 전화번호 없을 경우 'NONE'으로 출력
SELECT PT_NAME
        , PT_NO
        , GEND_CD
        , AGE
        , IFNull(TLNO,'NONE')
FROM PATIENT
WHERE GEND_CD='W' AND AGE <= 12

-- 5. 나이 기준 내림차순, 나이 같을시 환자이름 오름차순
SELECT PT_NAME
        , PT_NO
        , GEND_CD
        , AGE
        , IFNull(TLNO,'NONE')
FROM PATIENT
WHERE GEND_CD='W' AND AGE <= 12
ORDER BY AGE DESC, PT_NAME ASC;

-- 문제 해석
-- SELECT : '환자이름, '환자번호', '성별코드', '나이', '전화번호**' 를 출력 할 것
-- WHERE : 성별은 'W', 나이는 '12세이하'
-- ORDER BY : 나이를 기준으로 '내림차순', 나이가 같다면 이름을 기준으로 '오름차순'
