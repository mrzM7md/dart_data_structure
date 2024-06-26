import 'algorithms/search/binary_search_algorithm.dart';
import 'algorithms/search/interpolation_search_algorithm.dart';
import 'algorithms/sort/bubble_sort_algorithm.dart';
import 'algorithms/sort/selection_sort_algorithm.dart';
import 'dynamic_stack.dart';
import 'fixed_stack.dart';
import 'hash_table.dart';
import 'linked_list.dart';
import 'dart:io';

void main(List<String> arguments) {
  /// LinkedList
  print("######################### LINKED LIS START #########################");
  MrzNode head = MrzNode<int>(value: 1, next: null);
  MrzLinkedList mrzLinkedList = MrzLinkedList(head: head);
  mrzLinkedList.addFirst(newNode: MrzNode(value: 0, next: null));
  mrzLinkedList.addFirst(newNode: MrzNode(value: -1, next: null));
  mrzLinkedList.display();
  mrzLinkedList.deleteFirst();
  mrzLinkedList.display();
  print("######################### LINKED LIS END #########################");

  stdout.writeln();

  print("######################### FIXED STACK START #########################");
  MrzFixedStack<int> mrzFixedStack = MrzFixedStack(size: 5);
  mrzFixedStack.push(item: 1);
  mrzFixedStack.push(item: 2);
  mrzFixedStack.push(item: 3);
  mrzFixedStack.push(item: 4);
  mrzFixedStack.display();
  stdout.writeln(mrzFixedStack.pop());
  stdout.writeln();
  mrzFixedStack.display();
  stdout.writeln();
  stdout.writeln(mrzFixedStack.search(index: 2));
  stdout.writeln();
  stdout.writeln(mrzFixedStack.pop());
  stdout.writeln(mrzFixedStack.pop());
  stdout.writeln(mrzFixedStack.pop());
  mrzFixedStack.display();

  print("######################### FIXED STACK END #########################");

  print("######################### DYNAMIC STACK START #########################");
  MrzDynamicStack<String> mrzDynamicStack = MrzDynamicStack();
  mrzDynamicStack.push(item: "Hello 1");
  mrzDynamicStack.push(item: "Hello 2");
  mrzDynamicStack.push(item: "Hello 3");
  mrzDynamicStack.display();
  stdout.writeln();
  stdout.writeln(mrzDynamicStack.pop());
  stdout.writeln();
  mrzDynamicStack.display();
  stdout.writeln();
  print(mrzDynamicStack.search(index: 1));
  print("######################### DYNAMIC STACK END #########################");


  List<int> l = [];
  for(int i = 1; i <= 1000000; i++){
    l.add(i);
  }

  print("######################### BinarySearch START #########################");
  print(BinarySearch().getBinarySearch(orderedNs: l, num: 4));
  print("######################### BinarySearch END #########################");

  print("######################### INTERPOLATION SEARCH START #########################");
  print(InterpolationSearch().getInterpolationSearch(orderedNs: l, num: 4));
  print("######################### INTERPOLATION SEARCH END #########################");

  print("######################### BUBBLE SORT START #########################");
  print(BubbleSort().getBubbleSort([22, 1, 0, 4, 3, 2, 10, 8, 6]));
  print("######################### BUBBLE SORT END #########################");

  print("######################### SELECTION SORT START #########################");
  print(SelectionSort().getSelectionSort(unSortedNumbers: [22, 1, 0, 4, 3, 2, 10, 8, 6]));
  print("######################### SELECTION SORT END #########################");

  print("######################### HASH TABLE START #########################");

  var h = MrxHashTable(size: 8)
    ..insert(key: 1, value: "anyValue")
    ..insert(key: 1, value: "anyValue")
  ;
  h.displayHash();

  print("######################### HASH TABLE SORT END #########################");
}