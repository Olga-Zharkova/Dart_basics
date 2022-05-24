
class SearchingNumbers
{
  static List <int> searchingNumbers(String line){
    List<String> listWord = line.split(" "); //разбиваем строку на слова без пробела
    List <int> num = [];
    for (String word in listWord)
    {
      if(int.tryParse(word) != null)
        {
          num.add(int.parse(word));
        }
    }
    return num;
  }
}