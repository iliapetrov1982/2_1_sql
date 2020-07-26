select distinct(email)
from (
    select 
    email,
    count(email) over (partition by email) as has_duplicate
    from person_2 p2 
) as foo
where has_duplicate > 1