import 'package:test/test.dart';
import 'package:hacks/sorting_algorithms.dart';

void main() {
  test('bubble sort works correctly', () {
    List<int> unsorted = [5, 3, 8, 2, 1, 4];
    List<int> sorted = SortingAlgorithms.bubbleSort([...unsorted]);
    expect(sorted, equals([1, 2, 3, 4, 5, 8]));
  });

  test('Merge sort', () {
    List<int> unsorted = [5, 3, 8, 2, 1, 4];
    List<int> sorted = SortingAlgorithms.mergeSort([...unsorted]);
    expect(sorted, equals([1, 2, 3, 4, 5, 8]));
  });
}
