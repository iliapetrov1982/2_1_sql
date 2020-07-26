select distinct(class)
from(
	select
	class,
	count(student) over (partition by class) as cnt
	from courses
) as foo
where cnt >= 5