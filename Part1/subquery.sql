-- 사용 금액이 평균보다 높은사람 출력
-- 사용 금액 평균 구하기 -> 평균보다 큰 사람 필터
-- select query안에 select query해서 한번에 처리 가능
-- 쿼리문 2개 실행하기 어려우면 사용
select * from card 
where 사용금액 > (select avg(사용금액) from card);

/*
하나의 문자나 숫자가 나오는 경우게만 서브쿼리 사용 가능.
여러행을 뱉어내는 서브쿼리문은 사용안된다!
서비쿼리 소괄호 꼭 사용
*/

-- black list table 만들어서 서브쿼리 응용
-- in 에서는 여러 값을 가지는 서브쿼리사용한다.
-- 나중에 배울 join 문법 사용해도된다.
select * from card where 고객명 in (select 이름 from blacklist);