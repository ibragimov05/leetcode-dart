class Solution {
  List<int> singleNumber(List<int> nums) {
    List<int> result = [];
    for (int number in nums) {
      if (nums.where((element) => element == number).length == 1) {
        result.add(number);
        if (result.length == 2) {
          return result;
        }
      }
    }
    return [];
  }
}
