class Solution {
  String reformatDate(String date) {
    List<String> months = [
          "Jan",
          "Feb",
          "Mar",
          "Apr",
          "May",
          "Jun",
          "Jul",
          "Aug",
          "Sep",
          "Oct",
          "Nov",
          "Dec"
        ],
        result = [],
        box = date.split(' ');

    result.add('${box[2]}');

    for (int i = 0; i < months.length; i++) {
      if (months[i] == box[1]) {
        if (i <= 8)
          result.add('0${i + 1}');
        else
          result.add('${i + 1}');
        break;
      }
    }

    if (isDigit(box[0].split('')[1]))
      result.add('${box[0].split('')[0]}${box[0].split('')[1]}');
    else
      result.add('0${box[0].split('')[0]}');

    return result.join('-');
  }

  bool isDigit(String number) {
    try {
      // ignore: unused_local_variable
      int result = int.parse(number);
      return true;
    } catch (e) {
      return false;
    }
  }
}
