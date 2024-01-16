// Draw your arrows backwards
import 'dart:math';

import 'package:kata_machine/entity/node.dart';

class Stack<T extends Object> {
  int length = 0;
  Node<T>? _head;

  void push(T item) {
    final newNode = Node(value: item);
    length++;

    if (length == 1) {
      _head = newNode;
      return;
    }

    newNode.prev = _head;
    _head = newNode;
  }

  T? pop() {
    length = max(0, length - 1);
    final nodeToPop = _head;

    if (length == 0) {
      _head = null;
      return nodeToPop?.value;
    }

    _head = _head?.prev;

    return nodeToPop?.value;
  }

  T? peek() => _head?.value;
}
