class SelectionSort {
  List<int?> getSelectionSort({required List<int> unSortedNumbers}){
    int currentNumIndex = 0;
    int smallestNumber = 0;
    int indexOfSmallestNumber = 0;
    while (currentNumIndex != unSortedNumbers.length - 1){
      for(int i = currentNumIndex+1; i < unSortedNumbers.length; i++){
        if(unSortedNumbers[currentNumIndex] > unSortedNumbers[i]){
          smallestNumber = unSortedNumbers[i];
          indexOfSmallestNumber = i;
          unSortedNumbers[indexOfSmallestNumber] = unSortedNumbers[currentNumIndex];
          unSortedNumbers[currentNumIndex] = smallestNumber;
        }
      }
      ++currentNumIndex;
    }
    return unSortedNumbers;
  }
}