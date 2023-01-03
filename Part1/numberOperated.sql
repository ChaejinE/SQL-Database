-- 여러 숫자 입력 시 최소, 최대값 하나만 뽑아준다.
-- max,min은 컬럼안에서, greatest, least는 하나의 행이나 숫자 배열에서 최대, 최소를 뽑는다.
select greatest(5, 3, 2, 1, 4);
select least(5, 3, 2, 1, 4);

-- floor : 소수를 내림해서 정수로
-- ceil : 소수를 올림해서 정수로
select floor(10.1);
select floor(10.9);
select ceil(10.1);
select ceil(10.9);

-- ROUND(숫자, 자릿수)
-- 입력한 자릿수까지 반올림. 10.78
select round(10.777, 2);

-- TRUNCATE(숫자, 자릿수)
-- 입력한 잘릿수까지 내림. 10.77
-- Oracle, Postgres는 TRUNCATE()아닌 TRUNC()
select truncate(10.777, 2);

-- 거듭제곱
select power(4, 2);

-- 절댓값
select abs(-100);
