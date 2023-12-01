final numberRegex = RegExp(
    r'(?:one|two|three|four|five|six|seven|eight|nine)|(?:[1-9]+)');

final numberMap = {
  'one': 1,
  'two': 2,
  'three': 3,
  'four': 4,
  'five': 5,
  'six': 6,
  'seven': 7,
  'eight': 8,
  'nine': 9,
};

int calculateSumOfAllOfTheCalibrationValuesPart2(String input) {
  return input
      .split('\n')
      .map(sumOfFirstAndLastNumberInLinePart2)
      .reduce((a, b) => a + b);
}

int sumOfFirstAndLastNumberInLinePart2(String line) {
  final numbersInLine = numberRegex
      .allMatches(line)
      .map((e) => e[0] ?? '')
      .map((e) => (int.tryParse(e) ?? numberMap[e] ?? 0).toString())
      .map((e) => e.split(''))
      .expand((e) => e);

  return numbersInLine.isEmpty
      ? 0
      : int.parse(numbersInLine.first + numbersInLine.last);
}
