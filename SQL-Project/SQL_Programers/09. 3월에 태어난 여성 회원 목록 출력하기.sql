문제
ID, 이름, 성별, 생년월일 조회
생일이 3월인 여성 + 전화번호가 NULL일 경우 제외
회원ID를 기준으로 오름차순 정렬

1.MEMBER_PROFILE 테이블 전체 조회
SELECT 
* 
FROM MEMBER_PROFILE

2. member_id, member_name, gender, date_of_birth('YYYY-MM-DD') 조회
SELECT  member_id
        , member_name
        , gender
        , date_of_birth 
FROM MEMBER_PROFILE

3. 03월생 여성 출력
SELECT  member_id
        , member_name
        , gender
        , TO_CHAR (date_of_birth,'YYYY-MM-DD') AS date_of_birth
FROM MEMBER_PROFILE
WHERE 	GENDER = 'W' 
		AND TO_CHAR (date_of_birth,'MM') = '03'

4. 전화번호가 NULL일 경우 출력 제회
SELECT  member_id
        , member_name
        , gender
        , TO_CHAR (date_of_birth,'YYYY-MM-DD') AS date_of_birth
FROM MEMBER_PROFILE
WHERE   GENDER = 'W' 
        AND TO_CHAR (date_of_birth,'MM') = '03'
        AND TLNO IS NOT NULL

5. 회원ID 기준으로 오름차순
SELECT  member_id
        , member_name
        , gender
        , TO_CHAR (date_of_birth,'YYYY-MM-DD') AS date_of_birth
FROM MEMBER_PROFILE
WHERE   GENDER = 'W' 
        AND TO_CHAR (date_of_birth,'MM') = '03'
        AND TLNO IS NOT NULL
ORDER BY member_id ASC