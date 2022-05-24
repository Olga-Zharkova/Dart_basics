//////////////////////////////////////////////////////////////////////
//1 задание:
class  DelimetersCalculator{
  //ОБЫЧНЫЕ МНОЖИТЕЛИ
  //разбиение числа на простые множители, сделать проверку на вводимое число!!!!!
  static List<int> primFacNum(int value) {
    if (value < 2)
    {
      throw ArgumentError();
    }

    int i = 2;
    List <int> listPrimFacNum = [];
    while (i * i <= value){
      while (value % i == 0){
        listPrimFacNum.add(i);
        //print(listPrimFacNum.last);
        value = (value ~/ i);
      }
      i = i + 1;
    }
    if (value > 1){
      listPrimFacNum.add(value);
    }
    //print(listPrimFacNum.length);
    return listPrimFacNum;
  }
  //NOD
  //перестановка переменных по возрастанию
  static _swap(int a, int b){
    int c = a;
    a = b;
    b = c;
  }

  //НАИБОЛЬШИЙ ОБЩИЙ ДЕЛИТЕЛЬ
  static int gcd(int a, int b){
    if (a < 0 || b < 0)
    {
      throw ArgumentError();
    }

    if (a < b) {
      _swap(a, b);
    }
    if (b>0) {
      return gcd(b, a % b);
    } else {
      return a;
    }
  }
  //НАИМЕНЬШЕЕ ОБЩЕЕ КРАТНОЕ
  static int lcm(int a, int b){
    if (a < 0 || b < 0)
    {
      throw ArgumentError();
    }
    return a ~/ gcd(a, b) * b;
  }
}



