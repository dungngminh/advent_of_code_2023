import 'package:collection/collection.dart';

int calculateFewestNumberOfCubesOfEachColor(String input) {
  return input
      .split('\n')
      .map(_getPowerOfColorsThatPossible)
      .reduce((a, b) => a + b);
}

int _getPowerOfColorsThatPossible(String line) {
  final splited = line.split(': ');
  final gameValues = splited[1];

  final dataInEachElement =
      gameValues.split('; ').map((e) => e.split(', ')).expand((e) => e);

  final red = dataInEachElement
      .where((e) => e.contains('red'))
      .map((e) => e.split(' red').first)
      .map((e) => int.tryParse(e) ?? 0)
      .max;
  final green = dataInEachElement
      .where((e) => e.contains('green'))
      .map((e) => e.split(' green').first)
      .map((e) => int.tryParse(e) ?? 0)
      .max;
  final blue = dataInEachElement
      .where((e) => e.contains('blue'))
      .map((e) => e.split(' blue').first)
      .map((e) => int.tryParse(e) ?? 0)
      .max;
  return red * green * blue;
}
