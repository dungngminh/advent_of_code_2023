int calculateSumOfAllOfTheCalibrationValuesPart1(String input) {
  return input
      .split('\n')
      .map(sumOfFirstAndLastNumberInLinePart1)
      .reduce((a, b) => a + b);
}

int sumOfFirstAndLastNumberInLinePart1(String line) {
  final numbersInLine = line.split('').where((e) => int.tryParse(e) != null);
  return numbersInLine.isEmpty
      ? 0
      : int.parse(numbersInLine.first + numbersInLine.last);
}

