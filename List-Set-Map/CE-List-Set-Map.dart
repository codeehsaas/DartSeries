void main(List<String> args) {
  /*
  Dynamic type
  - Normally Dart can infer var, final or const variables
  - There's another type dynamic which can be used in specific cases
  - var x = 'Zyraa';
  - x = 10 <not allowed>
  - dynamic kuchBhi = 'Zyraa'
   */
  /*
  List - Also called Arrays in other languages
  - Index are always zero-based
  - [idx] also called using subscript operator
  - You can display and assign using [] operator
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
   -To create with right type, create a <int>[] within, add to itm and return it
   */

  /*
  Set - An unordered collection of unique items
  - To create an empty set use <String>{}.
  - To add use the add, for single, or addAll to add from a list
  - You can create directly using Set.from([..])
  - Use contains() or containsAll() to check single or list items.
  - Use intersection to give you similar items from 2 sets
  -
   */
  /*
  Map
  - Lets you store key-value pair. Key is unique, but value can be same
  - Without type, you may create a Map<dynamic, dynamic>
  - For a key that isn't in a map, you get a null on return
  - Comprehension
   -   var squareMap = {for (var i in nos) 'Square of $i': i * i};
   */
}