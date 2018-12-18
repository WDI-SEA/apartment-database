--- Answers for Questions
-- public folder contains the table in pgAdmin4
--- 1.
SELECT id, name, age
	FROM public.owners;

--- 2. 
SELECT name FROM public.properties;

--- 3. 
SELECT * FROM public.owners
ORDER BY age
ASC

--- 4. 
SELECT * FROM public.owners
WHERE name='Donald'

--- 5. 
SELECT * FROM public.owners
WHERE age > 30;

--- 6. 
SELECT * FROM public.owners
WHERE name like 'E%' ;

--- 7. 
UPDATE public.owners
	SET age=30
	WHERE name='Jane';

--- 8. 
UPDATE public.owners
	SET name = 'Janet'
	WHERE name='Jane';

--- 9. 
DELETE FROM public.owners
	WHERE name='Janet';

--- 10.
SELECT * FROM public.owners
limit 3;

--- 11.
SELECT * FROM public.owners
WHERE name like '%a%' ;

--- 12.
SELECT id, name, units, owner_id
FROM public.properties
WHERE id<>3 AND id<> 5 AND name<>'Archstone' 
ORDER BY name ASC;

--- 13.
SELECT MAX(age)
FROM public.owners; 

--- 14.
SELECT MAX(age)
FROM public.owners
WHERE age<30 AND name like '%o%' ; 

--- 15.
SELECT SUM(units)
FROM public.properties
WHERE owner_id BETWEEN 1 and 3 ; 


--- Bonuses (if attempted)
