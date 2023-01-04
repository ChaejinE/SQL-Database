-- db 생성
create database test;

-- db 삭제
drop database test;

-- table colunm 생성
create table 테스트.new_table (
	id int,
	이름 varchar(100),
	나이 int
);

-- table 삭제
drop table 테스트

-- table 수정
alter table new_table add colunm_name varchar(100);

-- 컬럼 추가
alter table new_table add colunm_name varchar(100);
-- 컬럼 속성 수정
-- 데이터가 string이 있는데, int로 자료형 변환하는 것은 불가능
alter table new_table modify column 나이 varchar(100);
-- 컬럼 삭제
alter table new_table drop column 나이;
