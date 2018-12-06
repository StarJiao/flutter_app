import 'package:hex/hex.dart';

void main() {
  var names = ["hello", "world"];
  for (var name in names) {
    print(name);
  }
  print(add(3, 7));

  List<String> strs = new List();
  strs.add("sdfas");
  strs.add("hello");
  strs.add("world");

  for (String string in strs) {
    print(string);
  }

  double dou = 20 / 21;
  print(dou);
  print((dou * 100).floor());
  print(int.parse((dou.floor() * 100).toString()));

  print((dou * 100).floor().toDouble());

  print(HEX.encode([255]));

  ///  print(HEX.encode([-255]));//error
  ///  print(HEX.encode([256]));//error
  ///  print(HEX.encode([257]));//error
}

int add(int a, int b) {
  return a + b;
}
