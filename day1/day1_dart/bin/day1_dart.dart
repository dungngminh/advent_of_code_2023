import 'dart:io';

import 'package:day1_dart/day1_part1.dart';
import 'package:day1_dart/day1_part2.dart';

Future<void> main(List<String> arguments) async {
  final file = File('lib/input.txt');
  final fileContent = await file.readAsString();
  print(calculateSumOfAllOfTheCalibrationValuesPart1(fileContent));
  print(calculateSumOfAllOfTheCalibrationValuesPart2(fileContent));
}
