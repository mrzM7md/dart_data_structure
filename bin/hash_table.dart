class MrxHashTable<T> {
  late List<List<T>> _hashTable;
  MrxHashTable({required int size}){
    _hashTable =  List.generate(size, (index) => <T>[]);
  }
  void displayHash() {
    for (int i = 0; i < _hashTable.length; i++) {
      print("$i -->");
      for (T j in _hashTable[i]) {
        print(" --> $j");
      }
      print("");
    }
  }

  int _hashing(int key) {
    return key % 10;
  }

  void insert({required int key, required T value}) {
    int hashKey = _hashing(key);
    _hashTable[hashKey].add(value);
  }
}
