import 'package:test/test.dart';
import 'package:bloques/bloques.dart';

void main() {
  group('primer ejemplo', () {
    test('ejemplo 1', () => expect(bloques([6, 0, 3, 4, 1, 3]), 7));
  });

  group('normales', () {
    test('normal 1', () => expect(bloques([0,1,0,2,1,0,1,3,2,1,2,1]), 6));
    test('normal 2', () => expect(bloques([4,2,0,3,2,5]), 9));
  });

  group('inesperados', () {
    test('vacio', () => expect(bloques([]), 0));
    test('uno', () => expect(bloques([5]), 0));
    test('todos iguales', () => expect(bloques([2,2,2]), 0));
  });
}
