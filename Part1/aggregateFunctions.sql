-- (컬럼)의 최대, 최소, 평균
select MAX(사용금액) from card;
select SUM(사용금액) from card;
-- 해당 컬럼 행 갯수 확인
select COUNT(사용금액) from card;

/*
집계 함수는 한 컬럼에 대해 사용한다.
*/

-- as를 사용하면 새로 집계된 컬럼 이름을 이쁘게 대체할 수 있다.
select max(사용금액) as 최대값 from card;

-- 고객등급이 vip인 사람들의 평균 사용 금액 (응용, 일부 행만 골라 통계내기)
select avg(사용금액) from card where 고객등급 = 'vip';

-- 중복제거 distinct. unique한 값들의 합계만 낼 수 있다.
select avg(distinct 연체횟수) from card;

-- max 안쓰고 max값 찾아보기. 데이터 너무 많으면 이게 더 빠를 수 있다.
select 사용금액 from card order by 사용금액 DESC limit 1