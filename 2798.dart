class Solution {
  int numberOfEmployeesWhoMetTarget(List<int> hours, int target) {
    int result = 0;
    for (var hour in hours) {
      if (hour >= target) result += 1;
    }
    return result;
  }
}

void main(List<String> args) {
  var s = Solution();
  s.numberOfEmployeesWhoMetTarget([0, 1, 2, 3, 4], 2);
}
