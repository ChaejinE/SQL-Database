-- 컬럼 출력시 사칙연산 적용 가능
-- 데이터에 10씩 곱해지는 sql
select 사용금액 * 10, 연체횟수 * 10  as 연체횟수 from card;

/*
원본 데이터 조작하는 것이 아니다.
*/

-- 컬럼끼리 연산 가능. 문자 컬럼에 사용하면 안된다.
select 사용금액 / 결제횟수 from card;

-- concat(col1, col2). 문자끼리 이어 붙여 출력. concat에 자기가 지정한 문자도 넣을 수 있다.
-- postgreql 등에서는 || 사용한다.
select concat(고객명, ' ', 고객등급) from card;

-- 공백 제거
select trim(고객명) from card;

-- 맘에 안드는 문자 바꿔주기 replace(col, 바뀔단어, 바꿀단어)
select replace(고객등급, '패', '훼') from card;

-- substring(col, 몇 번쨰 글자부터, 몇개)
-- SELECT RIGHT(번호, 4) from 테이블명 요런걸로도 맨 뒤 x자리 문자 잘라서 출력가능
select substring(고객명, 3, 2) from card;

-- insert(col, 몇째 글자부터, 몇개, 바꿀단어)
select insert('test@naver.com', 1, 4, 'hello') from card;

/*
컬럼에 있는 숫자, 문자 데이터 조작 가능하다는 것이 핵심.
*/