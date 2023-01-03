-- where로 통계여러개 내기 힘들면 Groupby 쓴다.
-- 고객 등급 별 통계. group by Col 하면 Col의 같은 값끼리 모아주며 그 이후 집계함수를 사용하면 된다.
select 고객등급, avg(사용금액) from card group by 고객등급;
select 고객등급, max(사용금액) from card group by 고객등급;
select 고객등급, count(사용금액) from card group by 고객등급;

/*
보통 카테고리 컬럼을 group by 뒤에 사용한다.
해당 컬럼이 카테고리 컬럼인지 인지하는 과정이 중요하다.
*/

-- group by 한 결과를 filtering 할 때는 where이 아닌, having을 사용해야된다.
-- where는 select from 필터링 (테이블 전체 행 필터링)
select 고객등급, avg(사용금액) from card where 연체횟수 = 0
group by 고객등급 having 고객등급 = 'vip' 
order by 고객등급