/* The RAND() function in MySQL generates a random floating-point number between 0 (inclusive) and 1 (exclusive). 
It can be used to produce random values for various purposes, such as sampling data or randomizing results.
Syntax
RAND([seed])
seed (Optional): An integer value that initializes the random number generator. 
If provided, the seed value ensures that the random sequence is reproducible. 
If omitted, a different random sequence is generated each time the function is called.
*/

select rand();

select round(rand()*100);
select ceil(rand()*100);
select floor(rand()*100);

SELECT 
    *
FROM
    emp.emp
    order by rand()
    limit 5 
    ;