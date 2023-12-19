import 'dart:io';

List<int> findCommonElements(List<int> list1, List<int> list2) {
  Set<int> commonElements = {};

  for (int element in list1) {
    if (list2.contains(element)) {
      commonElements.add(element);
    }
  }
  return commonElements.toList();
}

void main() {
  List<int> list1 = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> list2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  List<int> commonElements = findCommonElements(list1, list2);

  print("danh sach 1: $list1");
  print("danh sach 2: $list2");
  print("cac phantu chung: $commonElements");
}

