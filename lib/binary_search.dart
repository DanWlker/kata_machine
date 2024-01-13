bool binarySearch(List<int> haystack, int needle) {
  /// /space we need to search
  /// search(arr, low, high, needle) {
  ///
  /// do {
  ///   midpoint =  (low + (high - low) / 2).floor //avoids overflow
  ///   value = arr[midpoint]
  /// !* pro tip here, make it so
  /// !* low is inclusive, high is exclusive [low, high)
  /// !* ex. if [1, 1), its a broken state:
  /// !* we should include one but exclude one, its not logical
  /// !* ex. start at 1, but don't cross 1
  ///   if value = needle
  ///     return exist
  ///   else if value > midpoint
  ///     low = midpoint + 1
  ///   else
  ///     high = midpoint
  /// } while low < high
  ///
  /// return doesn't exist
  ///
  /// }
  ///
  ///
  ///
  ///
  var low = 0;
  var high = haystack.length;
  do {
    final midpoint = (low + (high - low) / 2).floor();
    final value = haystack[midpoint];

    if (value == needle) {
      return true;
    }

    if (value > needle) {
      high = midpoint; //high is exclusive
    }

    if (value < needle) {
      low = midpoint + 1;
    }
  } while (low < high);

  return false;
}
