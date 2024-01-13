void bubbleSort(List<int> arr) {
  /// for i..n
  ///   for j..n-1-i
  ///     if arr[i] > arr[j]
  ///       swap(i, j)
  ///

  for (int i = 0; i < arr.length; ++i) {
    //up to but not include the last element cuz we going to do a +1 check
    for (int j = 0; j < arr.length - 1 - i; ++j) {
      if (arr[j] > arr[j + 1]) {
        final tmp = arr[j];
        arr[j] = arr[j + 1];
        arr[j + 1] = tmp;
      }
    }
  }
}
