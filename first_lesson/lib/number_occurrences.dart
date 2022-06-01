class NumberOccurrences {
  static Map<String, int> numberOccurrences(List<String> listWord) {
    Map<String, int> numOccur = {};
    Set<String> setWord = {};

    //какие слова вообще встречаются
    for (String word in listWord) {
      setWord.add(word);
    }
    //заполняем мар ключ:0
    for (String word in setWord) {
      numOccur[word] = 0;
    }
    //увеличиваем значения по ключу, в зависимости от количества вхождений
    for (String word in listWord) {
      numOccur.update(word, (value) => value + 1);
    }
    return numOccur;
  }
}
