import 'lib/binary_search_test.dart';
import 'lib/bubble_sort_test.dart';
import 'lib/linear_search_test.dart';
import 'lib/two_crystal_balls_test.dart';

void main() {
  const testToRun = 3;
  switch (testToRun) {
    case 0:
      linearSearchTest();
    case 1:
      binarySearchTest();
    case 2:
      twoCrystalBallsTest();
    case 3:
      bubbleSortTest();
    default:
      throw Exception('Number not available');
  }
}
