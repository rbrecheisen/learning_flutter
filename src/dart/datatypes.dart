void main() {
  num a = 3.14;
  print(a.toInt());
  String s = "Hello, World!";
  print(s);
  String t = '''This is a multi-line
  string''';
  print(t);
  String answer = "no";
  String response = "The answer is: " + answer.toString();
  print(response);
  response = "The answer is: ${2+3}";
  print(response);
  List<int> integers = [1, 2, 3, 4, 5, 5];
  print(integers);
  List<dynamic> dynamicList = [1, 3.14, "Bla"];
  print(dynamicList);
  var fixedLengthList = List.filled(3, 0);
  print(fixedLengthList);
  // fixedLengthList.add(0);
  integers.remove(5); // deletes only first occurence found!
  print(integers);

  integers.forEach((element) {print(element);});

  // forEach
  List<String> strings = [];
  integers.forEach((element) {
    strings.add(element.toString());
  });
  print("Strings: $strings");

  // map
  strings = integers.map((element) {
    return element.toString();
  }).toList();  // map() returns Iterable, not List
  print("Strings: $strings");

  // filter (where, retainWhere, removeWhere, whereType)
  List<int> values = [-1, 2, 0, 1, -4, 4, 3];
  var positives = values.where((e) => e > 0);
  print(positives);
  List<String> words = ["wolf", "sky", "falcon", "cloud", "wood", "oak"];
  List<String> words2 = List<String>.of(words);
  words2.retainWhere((element) => element.startsWith("w"));
  print(words);
  print(words2);
  words.removeWhere((element) => element == "falcon");
  print(words);
  List<dynamic> bla = [1, 3.14, "Hello", false];
  print(bla.whereType<String>());

  // list comprehension
  List<int> someValues = [
    for (var i = 0; i < 5; i++)
      i
  ];
  print(someValues);

  // reduce
  var numbers = [1, 2, 3, 4, 5];
  var sum = 0;
  for (var number in numbers) {
    sum +=  number;
  }
  print("Sum: $sum");
  sum = numbers.reduce((value, sum) => value + sum);
  print("Sum: $sum");
}