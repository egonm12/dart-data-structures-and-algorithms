import 'package:data_structures_and_algorithms/linked_list.dart';
import 'package:data_structures_and_algorithms/stack.dart';

void main(List<String> arguments) {
  void balancedOrUnbalanced(String str) {
    final list = str.split('');
    final stack = Stack.of(list).reversedList;
    var leftParentheses = 0;
    var rightParentheses = 0;

    for (final element in stack) {
      if (element == '(') leftParentheses++;
      if (element == ')') rightParentheses++;
    }

    if (leftParentheses == rightParentheses) {
      print('balanced!');
    } else {
      print('unbalanced!');
    }
  }

  void nodes() {
    final list = LinkedList<int>();
    list.push(3);
    list.push(2);
    list.push(1);

    print('Before: $list');

    final firstNode = list.nodeAt(0);
    final removedValue = list.removeAfter(firstNode!);

    print('After:  $list');
    print('Removed value: $removedValue');
  }

  nodes();
}
