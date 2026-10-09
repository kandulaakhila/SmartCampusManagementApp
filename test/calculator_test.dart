import 'package:flutter_test/flutter_test.dart';
import '../lib/calculator.dart';

void main() {
  test('Addition Test', () {
    final calculator = Calculator();
    expect(calculator.add(10, 20), 30);
  });

  test('Subtraction Test', () {
    final calculator = Calculator();
    expect(calculator.subtract(10, 5), 5);
  });
}