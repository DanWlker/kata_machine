import 'package:kata_machine/bubble_sort.dart';
import 'package:test/test.dart';

void bubbleSortTest() {
  test("bubble-sort", () {
    final arr = [9, 3, 7, 4, 69, 420, 42];

    bubbleSort(arr);
    expect(arr, [3, 4, 7, 9, 42, 69, 420]);
  });
}
