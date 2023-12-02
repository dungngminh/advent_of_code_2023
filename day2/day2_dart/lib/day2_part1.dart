int calculateSumOfIdsGameThatPossible(String input) {
  return input.split('\n').map(_getIdThatPossible).reduce((a, b) => a + b);
}

int _getIdThatPossible(String line) {
  final splited = line.split(': ');
  final gameValues = splited[1];
  final gameKey = int.tryParse(splited.first.split('Game ').last) ?? 0;

  final dataInEachElement =
      gameValues.split('; ').map((e) => e.split(', ')).expand((e) => e);

  final red = dataInEachElement
      .where((e) => e.contains('red'))
      .map((e) => e.split(' red').first)
      .map((e) => int.tryParse(e) ?? 0)
      .every((e) => e <= 12);
  final green = dataInEachElement
      .where((e) => e.contains('green'))
      .map((e) => e.split(' green').first)
      .map((e) => int.tryParse(e) ?? 0)
      .every((e) => e <= 13);
  final blue = dataInEachElement
      .where((e) => e.contains('blue'))
      .map((e) => e.split(' blue').first)
      .map((e) => int.tryParse(e) ?? 0)
      .every((e) => e <= 14);
  if (red && green && blue) {
    return gameKey;
  } else {
    return 0;
  }
}
