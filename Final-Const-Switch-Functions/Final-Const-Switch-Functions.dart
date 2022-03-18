void main() {
  /*
Final var - You know you will not change it again. Can only be set once.
   Const - Compile time constant. Has to be set when declared.

  final String petBreed;
  const int hrsInDay;
  petBreed = 'Ridgeback';
  var petName = 'Zyraa';
  print('Pet is $petBreed');
*/

  /*
Enumerated types - Use to represent easy-to-remember pre-defined const values
  - enum Lang {Python, Dart, C++, Java}
  - The .name property gives the string value of the enum
  - Each value has an index property which returns value starting with 0
  - You can get all these using .values property
  - Use with switch with built-in warning if not handling all enum values
  - Trailing comma helps with formatting in code
*/

  /*
Switch - Control flow statement
- Use with int, string, or constants using ==
- Each non-empty clause ends with break
- Can use break,continue, throw, re-throw or return
- Use default clause to execute code when nothing matches your variable
- Example - Use snacks : Samosa, Gulabjamun, Barfi, Murukku, Dhokla, Idli
*/
  /*
Functions - Allow to keep often used code in one place.
- Mostly should do something
- Can be called multiple times, DRY principle
- void() function means it returns no value
- Simple function greetPet()
- Update greetPet() with variables: String name, String greeting
- Optional parameters come after required parameters. You can have Positional
- Or Named Parameters but NOT Both!
- The default value for optional parameters is null
- Optional Positional Parameter are wrapped in [String greeting='Hello']
- Named Parameters are optional unless marked as required.
  - Such parameters are wrapped in {param1 value}
  - When calling such functions, use paramName : value to call

   */

  var name = 'Zyraa';
  print('Hello, $name 😊');
}