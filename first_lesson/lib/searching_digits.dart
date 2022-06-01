class SearchingDigits {
  static Set<int> searchingDigits(String line) {
    List<String> listWord =
        line.split(", "); //разбиваем строку на слова без пробела и запятой
    List<String> dictionaryVal = [
      'zero',
      'one',
      'two',
      'three',
      'four',
      'five',
      'six',
      'seven',
      'eight',
      'nine'
    ];
    Set<int> numInt = {};
    for (String word in listWord) {
      for (int index = 0; index < dictionaryVal.length; index++) {
        if (dictionaryVal[index] == word) {
          numInt.add(index);
        }
      }
    }
    return numInt;
  }
}
