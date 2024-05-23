class Solution {
  int finalValueAfterOperations(List<String> operations) {
    int result = 0;
    for (var operation in operations) {
      if (operation == '--X' || operation == 'X--') result -= 1;
      if (operation == '++X' || operation == 'X++') result += 1;
    }
    return result;
  }
}

void main(List<String> args) {
  var s = Solution();
  print(s.finalValueAfterOperations(["--X", "X++", "X++"]));
}
