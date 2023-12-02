import 'dart:io';
import 'package:day2_dart/day2_dart.dart' as day2_dart;

Future<void> main(List<String> arguments) async {
  final file = File('lib/input.txt');
  final fileContent = await file.readAsString();
  print(day2_dart.calculateSumOfIdsGameThatPossible(fileContent));
}