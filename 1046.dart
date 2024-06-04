class Solution {
  int lastStoneWeight(List<int> stones) {
    while (stones.length > 1) {
      stones.sort((a, b) => b.compareTo(a));
      int maxNumber = stones.first, smallNumber = stones[1];
      if (maxNumber == smallNumber) {
        stones.removeAt(0);
        stones.removeAt(0);
      } else {
        stones[0] = maxNumber - smallNumber;
        stones.removeAt(1);
      }
    }
    return stones.length == 1 ? stones[0] : 0;
  }
}