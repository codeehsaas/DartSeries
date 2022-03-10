void main() {
  //Comments start with 2 forward slashes

  /*
  This is multi-line comment
  This is the second line of the comment
   */

  /*
  Variables - Created with <type> <variable name> = <value>
  also with: <var> <variable name> = <value>
  String variables - String <variable name> = '<value>' or "<value>"
  String Escaping - Using single quote, \, $, inside strings
  Raw String using r - Example is Path in Windows.
  String Interpolation using $variable and ${}
   */

  String petName = 'Zyraa';
  var petBreed = 'Ridgeback';
  //Variable interpolation in strings
  print('$petName is a $petBreed');

  //String methods & properties
  print('${petName.toUpperCase()} is of length ${petName.length}');

  //Using escape character for \\
  print('C:\\Windows\\System32');

  //Using a raw r string
  print(r'C:\Windows\System32\$folder');

  /*
  int variables - int <variable name> = <no>
  double variables - double <variable name> = <no_with_decimal_point>
   */
  var petAge = 2;
  double petWeight = 52.4;

  print('$petName weighs $petWeight and is of age $petAge');

  /*
  bool variables can only have true or false value
   */
  var likesChicken = true;
  print('$petName like chicken $likesChicken');
}