import 'package:kata_machine/linear_search.dart';
import 'package:test/test.dart';

void linearSearchTest() {
  test("linear search array", () {
    const foo = [1, 3, 4, 69, 71, 81, 90, 99, 420, 1337, 69420];
    expect(linearSearch(foo, 69), true);
    expect(linearSearch(foo, 1336), false);
    expect(linearSearch(foo, 69420), true);
    expect(linearSearch(foo, 69421), false);
    expect(linearSearch(foo, 1), true);
    expect(linearSearch(foo, 0), false);
  });
}
