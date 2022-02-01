class Stack<E> {
  Stack() : _storage = <E>[];

  Stack.of(Iterable<E> elements) : _storage = List<E>.of(elements);

  final List<E> _storage;

  @override
  String toString() => '--- Top ---\n'
      '${_storage.reversed.join('\n')}'
      '\n-----------';

  void push(E element) => _storage.add(element);

  E pop() => _storage.removeLast();

  E get peek => _storage.last;

  bool get isEmpty => _storage.isEmpty;

  bool get isNotEmpty => !isEmpty;

  List<E> get reversedList => _storage.reversed.toList();
}
