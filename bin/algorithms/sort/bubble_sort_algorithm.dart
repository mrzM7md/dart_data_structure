class BubbleSort{
  List<int> getBubbleSort(List<int> ns){
    for(int i = 0; i < ns.length; i++){
      for(int j = 0; j < ns.length - i - 1; j++){
        if(ns[j] > ns[j+1]){
          ns[j] = ns[j+1] + ns[j];
          ns[j+1] = ns[j] - ns[j+1];
          ns[j] = ns[j] - ns[j+1];
        }
      }
    }

    return ns;
  }
}