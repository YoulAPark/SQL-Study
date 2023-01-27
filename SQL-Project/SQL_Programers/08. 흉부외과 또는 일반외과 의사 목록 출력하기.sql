문제
의사의 이름, 의사ID, 진료과, 고용일자 조회
진료과 CS or GS
고용일자 기준 내림차순 / 같다면 이름 기준 오름차순

1. Doctor 테이블 전체 출력
SELECT 
* 
FROM DOCTOR

2. dr_name, dr_id, mcdp_cd, hire_ymd 출력
SELECT dr_name
        , dr_id
        , mcdp_cd
        , hire_ymd
FROM DOCTOR

3. 진료과가 CS이거나 GS일 경우
SELECT dr_name
        , dr_id
        , mcdp_cd
        , hire_ymd
FROM DOCTOR
WHERE mcdp_cd = 'CS' OR mcdp_cd = 'GS'

4. hire_ymd 기준으로 내림차순 정렬 / 같을경우 dr_name 기준 오름차순 정렬
SELECT dr_name 이름
        , dr_id 
        , mcdp_cd
        , TO_CHAR (hire_ymd, 'YYYY-MM-DD')
FROM DOCTOR
WHERE mcdp_cd = 'CS' OR mcdp_cd = 'GS'
ORDER BY hire_ymd DESC, dr_name ASC
