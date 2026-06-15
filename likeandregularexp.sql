use emp1;
select * from employe;
select * from employe where lastname like  'w%';
#like
select lastname from employe where lastname like  'w%';
#REGEXP
select * from employe where firstname regexp '^n';
SELECT *FROM employe WHERE firstname REGEXP '^(n|l)';
#rangeofnamestaringfroma-h
select * from employe where firstname regexp '[a-h]';