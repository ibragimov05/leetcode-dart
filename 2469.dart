class Solution {
  List<double> convertTemperature(double celsius) {
    return [celsius + 273.15, (celsius * 1.8) + 32];
  }
}