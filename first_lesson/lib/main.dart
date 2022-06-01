// Project imports:
import 'dart:developer';

import 'delimeters_calculator.dart';
import 'num_sqrt.dart';
import 'number_system.dart';
import 'searching_numbers.dart';
import 'number_occurrences.dart';
import 'searching_digits.dart';
import 'point.dart';
import 'user.dart';

void main() {
  //первое задание
  log('1 задание');
  List<int> arr = DelimetersCalculator.primFacNum(210);
  log(' простые множители');
  for (var i = 0; i < arr.length; i++) {
    log('   цифра: ${arr[i]}; ');
  }
  int gcd = DelimetersCalculator.gcd(3, 2);
  log('  НОД: $gcd');

  int lcm = DelimetersCalculator.lcm(6, 4);
  log('  НОК: $lcm');

  //второе задание
  log('2 задание');
  int bin = NumberSystem.bin(10);
  log('  из х10 в х2: $bin');

  int dec = NumberSystem.dec(111000);
  log('  из х2 в х10: $dec');

  //третье задание
  log('3 задание. Найти цифры в строке.');
  List<int> num = SearchingNumbers.searchingNumbers(
      '8 people live in 2 houses, 1 - a child, 4 - adults, 3 - elderly');
  for (var i = 0; i < num.length; i++) {
    log(' цифра: ${num[i]}; ');
  }

  //четвертое задание

  Map<String, int> numOc = NumberOccurrences.numberOccurrences([
    'dog',
    'cat',
    'goat',
    'cow',
    'cat',
    'cow',
    'cat',
    'goat',
    'goat',
    'cat'
  ]);
  log('4 задание. Слово - число вхождений: $numOc');

  // пятое задание
  log('5 задание. Из строки - число, без повторений:');
  Set<int> numInt = SearchingDigits.searchingDigits(
      'wolf, five, fox, forest, blanket, seven, one, seven, dog, '
      'zero, zero, zero, pepper, dill, vegetable garden, five');
  for (var i in numInt) {
    log(' цифра: $i; ');
  }

  //шестое задание
  log('6 задание');
  final dist = Pointt(x: 10, y: 5, z: -87);
  dist.distanceTo(Pointt(x: -89, y: 34.56, z: 67.4));
  log(
      ' расстояние между двумя точками: ${(dist.distanceTo(Pointt(x: -89, y: 34, z: 67))).toStringAsFixed(2)}');

  log(
      ' начало координат: (${Pointt.origCoord().x}, ${Pointt.origCoord().y}, ${Pointt.origCoord().z})');

  final uV = Pointt.unitVec();
  log(' единичный вектор: (${uV.x}, ${uV.y}, ${uV.z})');

  //седьмое задание
  log(
      '7 задание. Корень н-степени из числа: ${NumSqrt.sqrtN(9, 2)}'); //число, степень

  //восьмое задание
  log('8 задание');
  log(' Адреса почт созданных пользователей с применением ф-ции отброса');
  final admin1 = AdminUser(name: 'Vitya', email: 'fedor.534@mail.ru');
  log('   1 юзер: ${admin1.getMailSystem()}');

  final admin2 = AdminUser(name: 'Vasya', email: 'pupirka.56@mail.ru');
  log('   2 юзер: ${admin2.getMailSystem()}');

  final general = GeneralUser(name: 'Kolya', email: 'Romashka.1@mail.ru');
  log('   3 юзер: ${general.email}');
  final listUser = UserManager();
  listUser.addUser(admin1);
  listUser.addUser(general);
  listUser.addUser(admin2);

  log(' Список людей и адресов почт после добавления');
  log('   ${listUser.toListUser()}');
  log('   ${listUser.printEmail()}');

  listUser.deleteUser(admin2);
  //print(listUser);
  log(' Список людей и адресов почт после удаления');
  log('   ${listUser.toListUser()}');
  log('   ${listUser.printEmail()}');
}
