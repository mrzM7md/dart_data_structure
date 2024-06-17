/// TODO: Must be oredered list
// mid = high / 2 or low + (high - low)/2 , low = 0
// you need to mid, low, high
//ex
class BinarySearch {
  int getBinarySearch({required List<int> orderedNs, required int num}) {
    bool isFind = false;
    int min = 0;
    int high = orderedNs.length - 1;
    int mid = min + (high - min)~/2 ;
    int resultIndex = -1;
    int searchTimes = 0;

    while(!isFind){
      searchTimes++;

      if(min > high){
        print("Search Times: $searchTimes");
        return -1;
      }

      if(orderedNs[mid] == num){
        isFind = true;
        resultIndex = orderedNs.indexOf(num);
        break;
      }
      mid = min + (high - min)~/2 ;
      if(orderedNs[mid] > num){
        high = mid-1;
      }
      else{
        min = mid + 1;
      }
    }

    print("Search Times: $searchTimes");
    return resultIndex;
  }
}