/* The SIGN() function in MySQL returns the sign of a given numeric value. It indicates whether the number is positive, negative, or zero.
Syntax
SIGN(number)
Return Values:
   1: If the number is positive.
  -1: If the number is negative.
   0: If the number is zero.
 */
 
 select sign(99);
 select sign(-99);
 select sign(0);