class Node<T> {
  Node({
    required this.value,
    this.next,
  });

  T value;
  Node<T>? next;

  @override
  String toString() {
    if (next == null) return '$value';
    return '$value -> ${next.toString()}';
  }
}

class LinkedList<E> {
  Node<E>? head;
  Node<E>? tail;

  bool get isEmpty => head == null;

  @override
  String toString() {
    if (isEmpty) return 'Empty list';
    return head.toString();
  }

  /// Insert at head.
  /// Time complexity: O(1)
  void push(E value) {
    head = Node(value: value, next: head);
    tail ??= head;
  }

  /// Remove at head.
  /// Time complexity: O(1).
  E? pop() {
    final value = head?.value;

    head = head?.next;

    if (isEmpty) {
      tail = null;
    }

    return value;
  }

  /// Insert at tail.
  /// Time complexity: O(1)
  void append(E value) {
    if (isEmpty) {
      push(value);
      return;
    }

    tail!.next = Node(value: value);

    tail = tail!.next;
  }

  /// Remove at tail.
  /// Time complexity: O(n).
  E? removeLast() {
    if (head?.next == null) return pop();

    var currentNode = head;

    while (currentNode!.next != tail) {
      currentNode = currentNode.next;
    }

    final value = tail?.value;
    tail = currentNode;
    tail?.next = null;

    return value;
  }

  /// Returns a [Node] at given [index].
  /// Time complexity: O(i), where i is the given [index]
  Node<E>? nodeAt(int index) {
    var currentNode = head;
    var currentIndex = 0;

    while (currentNode != null && currentIndex < index) {
      currentNode = currentNode.next;
      currentIndex += 1;
    }

    return currentNode;
  }

  /// Insert after a [Node].
  /// Time complexity: O(1).
  Node<E> insertAfter(Node<E> node, E value) {
    if (tail == node) {
      append(value);
      return tail!;
    }

    node.next = Node(value: value, next: node.next);
    return node.next!;
  }

  /// Remove after a [Node].
  /// Time complexity: O(1).
  E? removeAfter(Node<E> node) {
    final value = node.next?.value;
    if (node.next == tail) {
      tail = node;
    }

    node.next = node.next?.next;

    return value;
  }
}
