nullToUpperCase(String? name) {
  if (name != null) print(name.toUpperCase());
}

void main(List<String> args) {
  print('null to upperCase: ${nullToUpperCase("zyraa")}');

  var nos = <int?>[1, 2, 3, 4, 5, 6, 7, null, 9, 10];
  final lstOfStrings = [
    for (var i in nos)
      if (i != null && i.isEven) print('$i is Even')
  ];

  print(lstOfStrings);

  var mixed = [1, 4, 6, 7.2, 8.4, 9, 10];

  final nums = mixed.whereType<int>();
  print('nums: $nums');

  var lstFun = (int n) => n % 2 == 0;
  var addTwo = (int n) => n + 2;
  print('Mapped: ${nums.where(lstFun).map(addTwo)}');

  print('From lstFun: ${lstFun.runtimeType} ${nums.where(lstFun)}');

  var reciprocals = [
    ...nums,
    22,
    ...[5, 10]
  ];

  print(
      'reciprocal map 1/e: ${reciprocals.map<double?>((e) => double.tryParse((1 / e).toStringAsFixed(4)))}');

  var nullLst = [
    0,
    10,
    ...[10, 15, 20, 25, 30].where((element) => element.isEven)
  ];
  print('List comp...: $nullLst');

  final setNos = {0, ...nullLst};
  print('Set comp...: $setNos');

  print(List<int>.generate(10, (index) => index * index));

  final movies = [
    {
      'name': 'War',
      'genre': 'Action',
      'ratings': [4, 5.0, 3.5],
    },
    {
      'name': 'Scream',
      'genre': 'horror',
      'ratings': [3.0, 2.5, 4],
    }
  ];

  print([2, 3.4, 5.0, 4].map((e) => e.toDouble()));

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

  String? nullString = null;
  var sLength = nullString?.length;
  print(
      'NUll string type: ${sLength.runtimeType}, length: ${nullString?.length.isEven}');

  var sentence = 'A sunny day';
  var chars = sentence.split('');
  var charMap = <String, int>{};

  print('Char count in: $sentence');

  for (var c in chars) {
    if (c.trim().isEmpty) continue;
    int charCount;

    if (charMap.containsKey(c)) {
      var currentCharCount = charMap[c]!;
      charCount = currentCharCount + 1;
    } else {
      charCount = 1;
    }
    charMap[c] = charCount;
  }
  print(charMap);

  var tomAllegry = 11; //diff:5 => 16 + 4 + 1
  print(getValuesForCode(allergenMap.values.toList(), tomAllegry));
  print(isValidCCNo('4539319503436467')); //4539319503436467
  print(isValidCCNo('8273123273520569'));

  var name = 'Zyraa';
  var nameChars = name.split('').toSet();
  print('Name chars: $nameChars');

  var primeNo = 110;
  print('Prime factors of $primeNo: ${getPrimeFactors(primeNo)}');
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