import 'package:day1_dart/day1_part1.dart';
import 'package:day1_dart/day1_part2.dart';
import 'package:test/test.dart';

void main() {
  group("Part 1", () {
    test('input has 1 line and result should be 23', () {
      final input = "fivepqxlpninevh2xxsnsgg63pbvdnqptmg";
      expect(calculateSumOfAllOfTheCalibrationValuesPart1(input), 23);
    });

    test('input has 3 line and result should be 23 + 84 + 33', () {
      final input = """fivepqxlpninevh2xxsnsgg63pbvdnqptmg
    eight8zlctbmsixhrvbpjb84nnmlcqkzrsix
    hkxqfrqmsixfplbkpkdfzzszjxmdjtdkjlprrvr3gghlrqckqtbng""";
      expect(calculateSumOfAllOfTheCalibrationValuesPart1(input), 23 + 84 + 33);
    });

    test(
        'input has 3 line, line 3 doesnt has any number and result should be 23 + 84',
        () {
      final input = """fivepqxlpninevh2xxsnsgg63pbvdnqptmg
    eight8zlctbmsixhrvbpjb84nnmlcqkzrsix
    hkxqfrqmsixfplbkpkdfzzszjxmdjtdkjlprrvrgghlrqckqtbng""";
      expect(calculateSumOfAllOfTheCalibrationValuesPart1(input), 23 + 84);
    });
  });

  group('Part 2', () {
    test('input has 1 line and result should be 99', () {
      final input = "9vft";
      expect(calculateSumOfAllOfTheCalibrationValuesPart2(input), 99);
    });

    test(
        'The input has 1 line, the numbers are in alphabetical form next to each other and the result is 53',
        () {
      final input = "fiveninepqxlpninevh2xxsnsgg63pbvdnqptmg";
      expect(calculateSumOfAllOfTheCalibrationValuesPart2(input), 53);
    });

    test('input has 1 line,  and result should be 53', () {
      final input = "fivepqxlpninevh2xxsnsgg63pbvdnqptmg";
      expect(calculateSumOfAllOfTheCalibrationValuesPart2(input), 53);
    });

    test('input has 3 line and result should be 53 + 86 + 63', () {
      final input = """fivepqxlpninevh2xxsnsgg63pbvdnqptmg
    eight8zlctbmsixhrvbpjb84nnmlcqkzrsix
    hkxqfrqmsixfplbkpkdfzzszjxmdjtdkjlprrvr3gghlrqckqtbng""";
      expect(calculateSumOfAllOfTheCalibrationValuesPart2(input), 53 + 86 + 63);
    });

    test(
        'input has 3 line, line 3 doesnt has any number and result should be 53 + 86 + 66',
        () {
      final input = """fivepqxlpninevh2xxsnsgg63pbvdnqptmg
    eight8zlctbmsixhrvbpjb84nnmlcqkzrsix
    hkxqfrqmsixfplbkpkdfzzszjxmdjtdkjlprrvrgghlrqckqtbng""";
      expect(calculateSumOfAllOfTheCalibrationValuesPart2(input), 53 + 86 + 66);
    });

    test(
        'input has 3 line, line 3 doesnt has any number word, just one number and result should be 53 + 86 + 33',
        () {
      final input = """fivepqxlpninevh2xxsnsgg63pbvdnqptmg
    eight8zlctbmsixhrvbpjb84nnmlcqkzrsix
    hkxqfrqmfplbkpkdfzz3szjxmdjtdkjlprrvrgghlrqckqtbng""";
      expect(calculateSumOfAllOfTheCalibrationValuesPart2(input), 53 + 86 + 33);
    });

    test(
        'input has 3 line, line 3 doesnt has any number word or number and result should be 53 + 86',
        () {
      final input = """fivepqxlpninevh2xxsnsgg63pbvdnqptmg
    eight8zlctbmsixhrvbpjb84nnmlcqkzrsix
    hkxqfrqmfplbkpkdfzzszjxmdjtdkjlprrvrgghlrqckqtbng""";
      expect(calculateSumOfAllOfTheCalibrationValuesPart2(input), 53 + 86);
    });
  });
}
