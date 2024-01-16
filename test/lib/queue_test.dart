import 'package:kata_machine/queue.dart';
import 'package:test/test.dart';

void queueTest() {
  test("queue", () {
    var list = Queue<int>();

    list.enqueue(5);
    list.enqueue(7);
    list.enqueue(9);

    expect(list.deque(), 5);
    expect(list.length, 2);

    list.enqueue(11);
    expect(list.deque(), 7);
    expect(list.deque(), 9);
    expect(list.peek(), 11);
    expect(list.deque(), 11);
    expect(list.deque(), null);
    expect(list.length, 0);

    list.enqueue(69);
    expect(list.peek(), 69);
    expect(list.length, 1);
  });
}
