void main(List<String> args) {
  /*
  Dynamic
  - Normally Dart can infer var, final or const variables
  - There's another type dynamic which can be used in specific cases
  - var x = 'Zyraa';
  - x = 10 <not allowed>
  - dynamic x = 'Zyraa'

  Null
  - Special keyword means "no value".
   - All types are non-nullable by default
  - To accept null, add the ? after the type name
  - Like in String? petName, List<String?>, <int?>[]
  - <int?>[ 1, 2, 3, null, 6, 10]
  - Use the null aware index operator nos?[idx]
  - String? petName=null;
  - To call methods or properties on nullable types use the null-aware
  - operator like below
  - var nameLength = petName?.length
  - If you check a variable with nullable type (== null or !=null) to see if it is not null,
  Dart then promotes the variable to the underlying non-nullable type:
  - if(petName !=null) print(petName.length);

   */

  /*
  Function Variables
  - var funOdd = (int n) => n % 3 == 0;
  - var funAddTwo = (int n) => n + 3;
  List - Also called Arrays in other languages
  - Index are always zero-based
  - [idx] also called using subscript operator
  - You can display and assign using [] operator
  - You can also initialise with the literal syntax:
  - nos = [for(var i=1; i<= 10; i++) i*i];
  - You can add another list using the ...spread operator
  - var pets = ['Tiger', 'Shera'];
  - var petNames = <String>['Zyraa', 'Rover', 'Noorie', ...pets]
  - Anonymous functions () =>
  - for (var e in list) {} will print the items at each stage with var e
 - List Methods -
   - first (Error: bad state on Empty list), last,
   - add, insert (position, item), removeAt(idx), remove(item)
   - clear (empties list), contains(item), indexOf(item) -1 not found
   - List Type can be assigned in front <String> and still use var for variable
   - To make it readonly, add const before the list []
   - Using final in the front, still allows setting with [idx]. Ony stops re-assignment
   - However const can report an error during runtime
   - The spread operator allows you to insert values if another list into 1st one
   - runtimeType will print the list <type>
   -whereType() will filter by type. toList will copy & preserve type
    - var nos = [10, 5.5, 15, 2.8, 3.2, 'Zyraa', 'Turner'];
  - print(nos.whereType<String>());
  - List comprehension [1, 2, ...[10, 15, 20, 25].where()]
   -To create with right type, create a <int>[] within, add to item and return it
   */

  /*
  Set - An unordered collection of unique items
  - To create an empty set use <String>{}.
  - To add use the add, for single, or addAll to add from a list
  - You can create from a list using Set<String>.from([..]) or list.toSet()
  - To retrieve an item, use Set.elementAt(idx)
  - Use contains() or containsAll() to check single or list items.
  - Use intersection to give you similar items from 2 sets
  - Use Union to get combination of all unique elements
  - Use difference to get the items in first set and not in second
  - nato = {'Belgium', 'Canada', 'France', 'USA', 'UK', 'Italy'}
  - northAmerica = {'Canada', 'USA', 'Mexico'}
   */

  /*
  Map
  - Lets you store key-value pair. Key is unique, but Value can be same
  - Without type, you may create a Map<dynamic, dynamic>
  - For a key that isn't in a map, you get a null on return
  -  var dayWeek = {'Mon': 1, 'Tue': 2, 'Wed': 3, 'Thu': 4, 'Fri': 5};
  - To iterate, you can use .entries, .forEach
  - Example: Find count of characters in String: Mary had a little lamb
  - Retrieving from map using [key], by default returns a nullable type.
  - If the Key in no in the map, you get a null value.
  - Either you can check for null or use ! operator.
  - Comprehension
   -   var squareMap = {for (var i in nos) 'Square of $i': i * i};
   */
}