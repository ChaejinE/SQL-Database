-- 제약
-- not null : null 값 넣을 수 없다는 뜻 (Required)
-- unique : 행마다 다른 데이터만 넣을 수 있다.
-- unique(col1, col2)의 경우 col1, col2가 같으면 안되는 것을 지정할 수있다.
-- check : 저장 이전에 조건대로 검수
-- primary key : 학번과 같이 구분 가능한 키를 지정할 수 있다.
-- auto_increment : 자동으로 1씩 증가하는 값이 부여된다. (DB 종류마다 이름 다름)
create table new_table2 (
	id int not null primary key auto_increment, 
	이름 varchar(100),
	나이 int check(나이 > 0),
	unique(이름, 나이)	
);

-- 아래 처럼 해도 된다.
-- 아래와 같은 구조로하면, 제약조건작명 때문에 에러가 난다는 식으로 표기된다. (디버그 편리)
create table new_table2 (
	id int,
	이름 varchar(100),
	나이 int,
	constraint 제약조건작명 primary key (id),
	constraint 제약조건작명2 check(나이 > 10),
);

-- 기존 컬럼에 제약 추가
alter table 테이블명 modify column명 int not null;
