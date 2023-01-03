-- if(조건식, 참이면 뱉을 값, 거짓이면 뱉을 값)
select if (1+2 = 3, 'aaa', 'bb')
-- if()는 양자 택일밖에 못한다. 20만원 이상, 10 ~ 20... 0 ~ 10 여러개 안됨.
select 사용금액, if(사용금액 > 200000, '우수', '그지') from card;

-- 경우가 3개 이상이면 CASE 문법
/*
case 
	when 조건식1 then 남길값1
	when 조건식2 then 남길값2
	when 조건식3 then 남길값3
end

Computer가 순차적으로 읽다가 맞는 조건일 때 남길값 뺴고 다 지워버리는 식으로 동작
*/
select 사용금액,
CASE 
	when 사용금액 >= 200000 then '우수'
	when 사용금액 >= 100000 then '준수'
	else '그지'
END as 평가
from card;

-- sum과 같이 사칙연산 사용시 select한 개수만큼 반복 수행한다.
-- 위 성질을 이용해 카테고리 컬럼에 따른 점수 부여 후 합계로 응용할 수 있다.
select sum(
	case
	when 고객등급 = 'vip' then 3
	when 고객등급 = '로열'  then 2
	when 고객등급 = '패밀리' then 1
	end
) as score
from card;

-- 30만 이상 vip, 20만 이상 30만 미만은 로열, 나머지는 패밀리로 다시 설정하고자 할 때,
-- 고객 등급이 변동될 이름들만 출력
select 고객명, 사용금액, 고객등급
from card
where 고객등급 != case
	when 사용금액 >= 300000 then 'vip'
	when 사용금액 >= 200000 then '로열'
	else '패밀리'
end
