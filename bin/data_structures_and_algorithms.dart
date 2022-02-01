import 'package:data_structures_and_algorithms/stack.dart';

void main(List<String> arguments) {
  final list = 'h((e))llo(world('.split('');
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
