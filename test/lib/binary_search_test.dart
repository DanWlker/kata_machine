import 'package:kata_machine/binary_search.dart';
import 'package:test/test.dart';

void binarySearchTest() {
  test("binary search array", () {
    const foo = [1, 3, 4, 69, 71, 81, 90, 99, 420, 1337, 69420];
    expect(binarySearch(foo, 69), true);
    expect(binarySearch(foo, 1336), false);
    expect(binarySearch(foo, 69420), true);
    expect(binarySearch(foo, 69421), false);
    expect(binarySearch(foo, 1), true);
    expect(binarySearch(foo, 0), false);
  });
}
