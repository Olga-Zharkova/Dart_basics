import 'firstLesson/4.dart';
import 'firstLesson/5.dart';
import 'firstLesson/1.dart';
import 'firstLesson/2.dart';
import 'firstLesson/3.dart';
import 'firstLesson/6.dart';
import 'firstLesson/7.dart';
import 'firstLesson/8.dart';

void main() {
  //первое задание
  print('1 задание');
  List <int> arr = DelimetersCalculator.primFacNum(210);
  print(' простые множители');
  for (var i=0; i<arr.length; i++){
    print('   цифра: ${arr[i]}; ');
  }
  int gcd = DelimetersCalculator.gcd(3, 2);
  print ('  НОД: $gcd');

  int lcm = DelimetersCalculator.lcm(6, 4);
  print ('  НОК: $lcm');

  //второе задание
  print('2 задание');
  int bin = NumberSystem.bin(10);
  print ('  из х10 в х2: $bin');

  int dec = NumberSystem.dec(111000);
  print ('  из х2 в х10: $dec');

  //третье задание
  print('3 задание. Найти цифры в строке.');
  List <int> num =  SearchingNumbers.searchingNumbers('8 people live in 2 houses, 1 - a child, 4 - adults, 3 - elderly');
  for (var i=0; i<num.length; i++){
    print(' цифра: ${num[i]}; ');
  }

  //четвертое задание

  Map <String, int> numOc = NumberOccurrences.numberOccurrences(['dog', 'cat', 'goat', 'cow', 'cat', 'cow', 'cat', 'goat', 'goat', 'cat']);
  print('4 задание. Слово - число вхождений: $numOc');

  // пятое задание
  print('5 задание. Из строки - число, без повторений:');
  Set <int> numInt =  SearchingDigits.searchingDigits(
      'wolf, five, fox, forest, blanket, seven, one, seven, dog, '
          'zero, zero, zero, pepper, dill, vegetable garden, five');
  for (var i in numInt){
    print(' цифра: $i; ');
  }

  //шестое задание
  print ('6 задание');
  final dist = Pointt(x: 10, y: 5, z: -87);
  dist.distanceTo(Pointt(x: -89, y: 34.56, z: 67.4));
  print(' расстояние между двумя точками: ${(dist.distanceTo(Pointt(x: -89, y: 34, z: 67))).toStringAsFixed(2)}');

  print(' начало координат: (${Pointt.origCoord().x}, ${Pointt.origCoord().y}, ${Pointt.origCoord().z})');

  final uV = Pointt.unitVec();
  print(' единичный вектор: (${uV.x}, ${uV.y}, ${uV.z})');

  //седьмое задание
  print('7 задание. Корень н-степени из числа: ${NumSqrt.sqrtN(9, 2)}'); //число, степень

  //восьмое задание
  print('8 задание');
  print(' Адреса почт созданных пользователей с применением ф-ции отброса');
  final admin1= AdminUser(name: 'Vitya', email: 'fedor.534@mail.ru');
  print('   1 юзер: ${admin1.getMailSystem()}');

  final admin2= AdminUser(name: 'Vasya', email: 'pupirka.56@mail.ru');
  print('   2 юзер: ${admin2.getMailSystem()}');

  final general = GeneralUser(name: 'Kolya', email: 'Romashka.1@mail.ru');
  print('   3 юзер: ${general.email}');
  final listUser = UserManager();
  listUser.addUser(admin1);
  listUser.addUser(general);
  listUser.addUser(admin2);

  print(' Список людей и адресов почт после добавления');
  print('   ${listUser.toListUser()}');
  print('   ${listUser.printEmail()}');

  listUser.deleteUser(admin2);
  //print(listUser);
  print(' Список людей и адресов почт после удаления');
  print('   ${listUser.toListUser()}');
  print('   ${listUser.printEmail()}');

}


