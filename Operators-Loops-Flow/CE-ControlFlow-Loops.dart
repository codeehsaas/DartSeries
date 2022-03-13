void main() {
  /*
  Expression & Statements
  - Exp hold a value at runtime
  - Statements don't hold any value
  Arithmetic:
   - + - * / ~/ (int division) % (remainder)
   - ++var var++ --var var-- Increment/Decrement operators, Postfix/Prefix operators
   - Operator Precedence forced with ()
    += *=, etc. All work with compound assignment operator
*/

/*
  Relational & Type Operators:
   - They always evaluate a test or condition that returns bool value
   - To test whether 2 objects represent the same thing
   - >, >=, <, <=, ==, !=, !() Negate or flips a result

  Logical And, OR: && || (either one), Ternary Operator exp1 ? exp2 : exp3
  - Logical operators for comparing multiple expressions
  - Ternary operator exp1 should be a bool expr
  - Ternary operator should've exp2/exp3 return same type value
  - print ( x == y) //equal *note both are num
  - print (x != y) // not equal
  - Example:
   - &&: email is not empty and contains '@'
   - Ternary: x > 17 ? 'Adult' : 'Child'
*/

/*
  Control Flow: if/else/else if
   - Allow you to make decisions based on some condition
   - Example: Calorie intake based on age, >60/2000, 41-60/2200, 40-16/2400, <15/2000

  Loops
  - while loop
   - Initialize, Evaluate condition, If True Run, False Exit
   - Odd no example
  - for loop
   - Looping with more control
   - First initialization, then condition check, then code process & then update
   - Next time only condition check and update if needed.

  - break & continue
   - Use break to exit from inner-most loop
   - Use continue to go right to the start ignore rest of loop code
*/

  var x = 17;
  var y = 2;
  var age = 16;
  print('x=$x, y=$y, age=$age');
}