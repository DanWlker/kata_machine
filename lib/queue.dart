import 'package:kata_machine/entity/node.dart';

class Queue<T extends Object> {
  int length = 0;
  Node<T>? _head;
  Node<T>? _tail;

  void enqueue(T item) {
    final newNode = Node(value: item);
    length++;

    if (length == 1) {
      _tail = _head = newNode;
      return;
    }

    _tail?.next = newNode;
    _tail = _tail?.next;
  }

  T? deque() {
    if (_head == null) {
      return null;
    }

    this.length--;

    final nodeToDeque = this._head;
    _head = _head?.next;
    nodeToDeque?.next = null;

    if (length == 0) {
      _tail = null;
    }

    return nodeToDeque?.value;
  }

  T? peek() => _head?.value;
}
