import 'package:kata_machine/stack.dart';
import 'package:test/test.dart';

void stackTest() {
  test("stack", () {
    final list = Stack<int>();

    list.push(5);
    list.push(7);
    list.push(9);

    expect(list.pop(), 9);
    expect(list.length, 2);

    list.push(11);
    expect(list.pop(), 11);
    expect(list.pop(), 7);
    expect(list.peek(), 5);
    expect(list.pop(), 5);
    expect(list.pop(), null);

    list.push(69);
    expect(list.peek(), 69);
    expect(list.length, 1);
  });
}
