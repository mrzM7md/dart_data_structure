import 'linked_list.dart';

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

  List<int> arr = List.filled(5, 0);
  arr[0] = 0;
  arr[1] = 1;
}
