class MrzDynamicStack<T>{
  late List<T> _array;

  MrzDynamicStack(){
    _array = <T>[];
  }

  // O(1)
  void push({required T item}){
    _array.add(item);
  }

  // O(1)
  T pop(){
    if(isEmpty()){
      throw emptyMessage();
    }
    T? item = _array.removeLast();
    return item!;
  }

  // O(n)
  void display(){
    for (T i in _array){
      print(i);
    }
  }

  // O(n)
  T? search({required int index}){
    return _array[index];
  }


  bool isEmpty(){
    return _array.isEmpty;
  }

  String fullMessage() => "Stack is full";
  String emptyMessage() => "Stack is empty";

}