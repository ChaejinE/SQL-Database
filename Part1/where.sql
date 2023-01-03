select * from product where 카테고리='가구'; -- where 컬럼명 = 값(문자는 따옴표 필요)
select * from product where 가격 = 5000; -- where 컬럼명 = 값 (숫자는 따옴표 노필요)
select * from product where 가격 != 5000; -- where 컬럼명 (비교연산자) 값
select * from product where 상품명 > 'ㄱ'; -- 문자도 대소비교 가능 ㄱ,ㄴ,ㄷ... 순서
select * from product where 가격 BETWEEN  5000 and 8000; -- 5000 < 가격 < 8000

/*
행을 필터링하고 싶을 때, 사용하는 것이 Where 문이다.
*/

select * from product where 가격 = 5000 and 카테고리 = '가구'; -- 조건식 연결해서 쓰는 방법

-- ()를 활용해서 먼저 연산해줄수도 있다.
select * from product where (카테고리 = '가구' or 카테고리 = '옷') and 가격 = 5000;

-- not is 제외 select * from product where 가격 != 5000;와 동일
select * from product where NOT 가격 = 5000;

-- 신발, 가전 Column 만 출력. or이 많으면 in 연산자를 써볼 수 있다.
select * from product
where 카테고리 in ('신발', '가전');

/*
where 잘 쓰려면 무슨 데이터 출력하고 싶은지 한글로 정리부터 한다.
Ex) 재고가 10개 미만인 상품인데, 가구는 필요없고, 가격은 5천원 이상...
*/

-- '소파'라는 단어가 들어간 데이터 조회하는 방법. %는 아무 문자라는 뜻.
-- '_소파'에서 _는 아무 문자 1개 (정확한 문자 개수를 지정할 때 사용 가능)
-- % 사용시, 성능 저하 이슈 생각 (index 활용 못하기 때문이라고한다.)
-- %, LIKE 등 VARCHAR() 컬럼에 주로 사용, CHAR() 컬럼에 쓰려면 주의 필요. CHAR는 부족한 부분을 공백추가한다.
select * from product 
where 상풍명 LIKE '%소파%';