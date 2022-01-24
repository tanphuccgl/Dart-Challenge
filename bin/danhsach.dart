// Viết function và unit test.

// Input: là 2 List<int>*, Ví dụ:*

//   a = [1, 1, 2, 3, 5, 8, 89, 13, 21, 34, 55]

//   b = [1, 2, 3, 4, 5, 6, 10, 7, 8, 9, 11, 12, 13]

// Output: 1 list chỉ chứa các số mà có trong 2 mảng input. Các số không được trùng. Ví dụ

// [1, 2, 3, 5, 8, 13]

List<int> filterDuplicates(
    List<int> list1,  List<int> list2) {
  List<int> list = [];
  for (var i in list1) {
    for (var j in list2) {
      if (i == j) {
        list.add(i);
      }
    }
  }
 
  return [...{...list}];
}
