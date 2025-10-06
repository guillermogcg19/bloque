import 'package:test/test.dart';
import 'package:bloques/bloques.dart';

void main() {
  group('primer ejemplo', () {
    test('ejemplo 1', () => expect(bloques([6, 0, 3, 4, 1, 3]), 7));
  });

  group('normales', () {
    test(
      'normal 1',
      () => expect(bloques([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]), 6),
    );
    test('normal 2', () => expect(bloques([4, 2, 0, 3, 2, 5]), 9));

    test('normal 3', () => expect(bloques([6, 0, 5, 4, 3, 2]), 5));
  });

  group('inesperados', () {
    test('vacio', () => expect(bloques([]), 0));
    test('uno', () => expect(bloques([5]), 0));
    test('todos iguales', () => expect(bloques([2, 2, 2]), 0));
  });

  test('todos ceros', () => expect(bloques([0, 0, 0, 0]), 0));
  test('todos iguales positivos', () => expect(bloques([5, 5, 5, 5]), 0));
  test('estrictamente creciente', () => expect(bloques([1, 2, 3, 4, 5]), 0));
  test('estrictamente decreciente', () => expect(bloques([5, 4, 3, 2, 1]), 0));

  test(
    'un bloque alto, sin paredes laterales',
    () => expect(bloques([1, 5, 1]), 0),
  );

  test(
    'bloque lato con paredes laterales medianas',
    () => expect(bloques([3, 1, 5, 1, 3]), 4),
  );

  test(
    'bloque alto con  paredes laterales casi iguales',
    () => expect(bloques([4, 1, 6, 1, 4]), 6),
  );

  test(
    'doble bloque alto con paredes laterales medianas',
    () => expect(bloques([2, 0, 5, 5, 0, 2]), 4),
  );
}
