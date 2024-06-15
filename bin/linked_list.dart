class MrzNode<T>{
  final T value;
  MrzNode? next;
  MrzNode({required this.value, required this.next});
}


//TODO: LinkedList contain from two sections: 1- value, 2- address, address is the reference to next node
//TODO: Last address is being null !!
//TODO: LinkedList is O(n)
class MrzLinkedList{
  MrzNode head;
  MrzLinkedList({required this.head});

  /// O(1)
  void addFirst({required MrzNode newNode}){
    newNode.next = head;
    head = newNode;
  }

  /// O(1)
  // void addEnd({required MrzNode newNode}){
  //   MrzNode? n = head;
  //   while(n != null){
  //     n = n.next;
  //   }
  //   n!.next = newNode;
  //
  // }

  /// O(1)
  void deleteFirst(){
    if(head.next == null){
      print("can't delete first node, LinkedList has only single node that is default node");
      return;
    }
    head = head.next!;
  }

  /// O(1/n)
  void display(){
    MrzNode? n = head;

    while(n != null){
      print(n.value);
      n = n.next;
    }

  }
}