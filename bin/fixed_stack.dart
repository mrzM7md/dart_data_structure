class MrzFixedStack<T>{
  final int size;
  late List<T?> _array;
  late int _top;

  MrzFixedStack({required this.size}){
    _array = List.filled(size, null);
    _top = -1;
  }

  // O(1)
  void push({required T item}){
    if(isFull()){
      throw fullMessage();
    }
    _top++;
    _array[_top] = item;
  }

  // O(1)
  T pop(){
    if(isEmpty()){
      throw emptyMessage();
    }
    T? item = _array[_top];
    _top--;
    return item!;
  }

  // O(n)
  void display(){
    for (int i = 0; i <= _top; i++){
      print(_array[i]);
    }
  }

  // O(n)
  T? search({required int index}){
    if(index > _top){
      throw "must be not avoid $_top index";
    }
    return _array[index];
  }


  bool isFull(){
    return _top == size-1;
  }

  bool isEmpty(){
    return _top == -1;
  }

  String fullMessage() => "Stack is full";
  String emptyMessage() => "Stack is empty";

}