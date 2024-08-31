class SortingAlgorithms {
  /// Sorts a list of integers using the Bubble Sort algorithm.
  ///
  /// [list] The list of integers to be sorted.
  /// Returns the sorted list of integers.
  static List<int> bubbleSort(List<int> list) {
    int n = list.length;
    for (int i = 0; i < n - 1; i++) {
      for (int j = 0; j < n - i - 1; j++) {
        if (list[j] > list[j + 1]) {
          int temp = list[j];
          list[j] = list[j + 1];
          list[j + 1] = temp;
        }
      }
    }
    return list;
  }

  /// Sorts a list of integers using the Merge Sort algorithm.
  ///
  /// [list] The list of integers to be sorted.
  /// Returns the sorted list of integers.
  static List<int> mergeSort(List<int> list) {
    if (list.length <= 1) return list;
    int mid = list.length ~/ 2;
    List<int> left = mergeSort(list.sublist(0, mid));
    List<int> right = mergeSort(list.sublist(mid));
    return merge(left, right);
  }

  /// Merges two sorted lists into a single sorted list.
  ///
  /// [left] The first sorted list.
  /// [right] The second sorted list.
  /// Returns the merged sorted list.
  static List<int> merge(List<int> left, List<int> right) {
    List<int> result = [];
    int i = 0, j = 0;
    while (i < left.length && j < right.length) {
      if (left[i] <= right[j]) {
        result.add(left[i]);
        i++;
      } else {
        result.add(right[j]);
        j++;
      }
    }
    result.addAll(left.sublist(i));
    result.addAll(right.sublist(j));
    return result;
  }
}
