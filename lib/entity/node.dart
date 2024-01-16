class Node<T> {
  T value;
  Node<T>? next;
  Node<T>? prev;

  Node({
    required this.value,
  });
}
