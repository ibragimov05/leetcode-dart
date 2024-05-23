import 'dart:math';

class Solution {
  int mySqrt(int x) {
    return sqrt(x).floor();
  }
}

void main(List<String> args) {
  var s = Solution();
  print(s.mySqrt(8));
}
