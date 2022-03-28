enum Snacks { Samosa, Barfi, Idli, Pakora, Gulabjamun }

void sayGreeting(String name,
    {String decorator = '**', String greeting = 'Hello'}) {
  print('$decorator $greeting! $name $decorator');
}

double getRectArea(double length, double width) {
  return length * width;
}

void main() {
  /*
Final var - You know you will not change it again. Can only be set once.
   Const - Compile time constant. Has to be set when declared.
  final String petBreed;
  const int hrsInDay = 24;
  petBreed = 'Ridgeback';
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
- Use with int, string, or constants using ==.
- All should be of same type
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
  - Multiple named parameters are wrapped in one {} separated by comma

   */

  String name = 'Zyraa';
  final mySnack = Snacks.Gulabjamun;

  print('Hello, $name 😊. I like ${mySnack.name} with index ${mySnack.index}');
  print('Snack values ${Snacks.values}');

  switch (mySnack) {
    case Snacks.Barfi:
      print('Barfi are sweet');
      break;
    case Snacks.Idli:
      print('Idlis are popular');
      break;
    case Snacks.Samosa:
      print('Samosa are loved by all');
      break;
    default:
      print("Pakora or Gulabjamun are liked by most people");
      break;
  }
  sayGreeting('Derek', decorator: '^^^');

  for (var i = 1.0; i < 3.0; i += 0.5) {
    var length = i + 0.5;
    print('Area of rect ($length x $i): ${getRectArea(length, i)}');
  }
}