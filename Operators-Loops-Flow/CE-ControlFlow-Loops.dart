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

  var x = 5;
  var y = 2;
  var age = 15;

  print(x + y);
  print(x - y);

  //performs exact division and returns double
  print('Precise double division ${x / y}');

  //performs integer division
  print('Integer division ${x ~/ y}');

  //Gives the remainder of division operation
  print('Remainder of 5 %2 ${5 % 2}');

  var z = x++; //Right side is postfix, left side is prefix

  print(x >= y); // >, <, <=, =>, == , !=

  var email = 'zyraa@gmail.com';
  //Using ternary operator
  print(
      !email.isEmpty && email.contains('@') ? "Valid email" : "Invalid email");

  // <16 Child, 16 <> 18 Youth, >18 Adult
  if (age < 16) {
    print('Child');
    print('Contact your parents');
  } else if (age > 16 && age <= 18) {
    print('Youth');
  } else {
    //Already > 18 no need to test
    print('Adult');
  }

  while (age >= 10) {
    print('Age $age');
    age--;
  }
  for (var i = 1; i <= 8; i += 10) {
    if (i == 5) {
      continue;
    }
    print('i $i');
  }
  print('x=$x, y=$y, z=$z, age=$age');
}