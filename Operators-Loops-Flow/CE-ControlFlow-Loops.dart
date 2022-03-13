void main() {
  /*
  Operator Precedence:
   - Use parenthesis to improve readability
   - Operators have precedence. For e.g * is higher than ==

  Arithmetic:
   - + - * / ~/ (int division) % (remainder) ++var var++ --var var--
    += (compound assignment operator), Operator Precedence force with ()
*/

/*
  Relational & Type Test:
   - To test whether 2 objects represent the same thing
   - >= > <= < as is is!
   - They always return a bool value

  Equality: == !=
  Logical And, OR: && || (either one), Ternary Operator exp1 ? exp2 : exp3
  - print ( x == y) //equal *note both are num
  - print (x != y) // not equal
  - Use with any expression that returns bool. Say my-email.com

*/

/*
  Control Flow
   - Allow you to make decisions if something is true or not
   - if(dogBreed = 'Ridgeback') {
      print('Protective')';
   } else if...
  - if-else-else if
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

  var x = 10.0;
  var y = 6;
  print('x=$x, y=$y');
}