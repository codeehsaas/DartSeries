void main(List<String> args) {
  /*
  Dynamic type
  - Normally Dart can infer var, final or const variables
  - There's another type dynamic which can be used in specific cases
  - var x = 'Zyraa';
  - x = 10 <not allowed>
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
  - To create an empty set use <String>{}. Without type, you may create a Map<dynamic, dynamic>
  - To add use the add, for single, or addAll to add from a list
  - You can create directly using Set.from([..])
  - Use contains() or containsAll() to check single or list items.
  - Use intersection to give you similar items from 2 sets
  -
   */
  /*
  Map
  - Comprehension
   -   var squareMap = {for (var i in nos) 'Square of $i': i * i};
   */

  var dogBreeds = ["'GSD'", 'Ridgeback', 'Rottweiler', 'Labrador', 'Beagle'];

  var nos = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final lstOfStrings = [
    for (var i in nos)
      if (i.isEven) '$i'
  ];

  print(dogBreeds.runtimeType);
  print(lstOfStrings);

  var mixed = [1, 4, 9.5, 10];

  var nums = mixed.whereType<int>(); //also List<int>.from(mixed);
  print(nums);

  var reciprocals = nums.map<double>((e) => 1 / e);
  print(reciprocals);

  var nullLst = [
    0,
    ...[null]
  ];
  print(nullLst);

  print(List<int>.generate(10, (index) => index * index));

  final allergenMap = {
    'eggs': 1,
    'peanuts': 2,
    'shellfish': 4,
    'strawberries': 8,
    'tomatoes': 16,
    'chocolate': 32,
    'pollen': 64,
    'cats': 128
  };
  var tomAllegry = 11; //diff:5 => 16 + 4 + 1
  print(getValuesForCode(allergenMap.values.toList(), tomAllegry));
  print(isValidCCNo('4539319503436467')); //4539319503436467
  print(isValidCCNo('8273123273520569'));

  var name = 'Zyraa';
  print(name.split('').toSet());
  print(getPrimeFactors(110));
}

List<int> getPrimeFactors(int no) {
  final result = <int>[];

  for (var j = 2; j <= no; j++) {
    for (var i = j;;) {
      var noMod = no % i;
      var noDiv = no ~/ i; //60/2 = 30, 30/2=15
      if (noMod == 0) {
        result.add(i); //add 2, 2
        no = noDiv; //no = 30, 15
      } else {
        break;
      }
    }
  }
  return result;
}

String prettyCCNo(String ccNo, {bool isReversed: false}) {
  if (isReversed) {
    return ccNo.split('').reversed.toList().asMap().entries.fold('',
        (previousValue, element) {
      if (element.key != 0 && element.key % 4 == 0)
        return '$previousValue-${element.value}';
      else
        return '$previousValue${element.value}';
    });
  } else {
    return ccNo.split('').toList().asMap().entries.fold('',
        (previousValue, element) {
      if (element.key != 0 && element.key % 4 == 0)
        return '$previousValue-${element.value}';
      else
        return '$previousValue${element.value}';
    });
  }
}

List<int> getValuesForCode(List<int> codes, int allergyCode) {
  codes.sort((x, y) => -(x - y));

  final result = <int>[];
  var total = 0;
  for (var i = 0; i < codes.length; i++) {
    if ((total + codes[i]) == allergyCode) {
      result.add(codes[i]);
      break;
    }
    if ((total + codes[i]) < allergyCode) {
      total += codes[i];
      result.add(codes[i]);
    }
  }
  return result;
}

bool isValidCCNo(String ccNo) {
  var nos = ccNo.split('');
  int sumNos = 0;

  for (var i = (nos.length - 1); i >= 0; i--) {
    var cno = int.tryParse(nos[i]) ?? -1;
    if (cno == -1) return false;

    if (i % 2 == 0) {
      cno *= 2;
      cno = (cno > 9) ? (cno -= 9) : cno;
    }
    sumNos += cno;
  }
  //ex reversed.join('');
  print("CC: ${prettyCCNo(ccNo)}, Sum: $sumNos");

  return ((sumNos % 10) == 0);
}