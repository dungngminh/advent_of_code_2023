import 'dart:io';
import 'package:day2_dart/day2_part1.dart' as day2_part1;
import 'package:day2_dart/day2_part2.dart' as day2_part2;

Future<void> main(List<String> arguments) async {
  final file = File('lib/input.txt');
  final fileContent = await file.readAsString();
  print(day2_part1.calculateSumOfIdsGameThatPossible(fileContent));
  print(day2_part2.calculateFewestNumberOfCubesOfEachColor(fileContent));
}
