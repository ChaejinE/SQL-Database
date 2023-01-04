-- table 2개 붙여서 출력하기
-- 아래처럼 하면, program, teacher의 모든 컬럼 사용 가능
select program.프로그램, teacher.강사 from program, teacher;

-- 아래 처럼 하면 최대한 두 테이블을 합쳐서 (조합) 출력해주려한다.
-- 너무 많은 행들이면 어마어마한 양이 나올 수 있다.
select * from program, teacher;

-- 어떤 조건의 테이블을 필터링해서 합칠 수 있다.
select * from program, teacher
where 강사id = teacher.id;

-- inner join 사용해도 된다.
-- 조합으로 만들어준다.
select * from program inner join teacher;

-- inner join은 on으로 필터링해준다.
select 프로그램, 가격, 강사, 출신대학 from program inner join teacher
on 강사id = teacher.id;

select * from 
table1 
inner join table2
inner join table3;

-- 모든 행의 조합 출력이 가능하다.
-- 거의 쓰이진 않지만, 모든 조합이 필요한 경우에만 사용한다.
select * from program cross join teacher