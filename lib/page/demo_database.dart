import 'dart:io';

import 'package:sqflite/sqflite.dart';

Future<String> createDb(String dbName) async {
  return null;
}

void findVersion() {
  Sqflite.platformVersion.then((value) => print("aaaaa" + value));
}

void findPath() {
  print("aaaaaa" + Directory.systemTemp.toString());
}

void main() {
  findPath();
  findVersion();
  while (true) {}
}
