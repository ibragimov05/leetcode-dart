class Solution {
  int scoreOfString(String s) {
    int res = 0;
    for (int i = 0; i < s.length - 1; i++) {
      int asciiValuePlus = s.codeUnitAt(i + 1), assciiValue = s.codeUnitAt(i);
      if (asciiValuePlus - assciiValue < 0) res += assciiValue - asciiValuePlus;
      else res += asciiValuePlus - assciiValue;
    }
    return res;
  }
}
