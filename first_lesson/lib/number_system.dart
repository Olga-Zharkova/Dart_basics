// Dart imports:
import 'dart:core';

class NumberSystem {
  //в двоичную систему
  static int bin(int value) {
    if (value < 0) {
      throw ArgumentError();
    }
    int modulo;
    //текущий разряд нашего двоичного числа
    int bin = 0;
    int rank = 1;
    while (value > 0) {
      modulo = value % 2;
      value ~/= 2;
      bin += modulo * rank;
      rank = rank * 10;
    }
    return bin;
  }

  //в десятичную систему
  //возведение числа в степень
  static int _pow(int value, int pow) {
    int result = 1;
    for (int i = 0; i < pow; i++) {
      result *= value;
    }
    return result;
  }

  // сама ф-ция
  static int dec(int value) {
    if (value < 0 || !RegExp(r'(^[0-1]*$)').hasMatch(value.toString())) {
      throw ArgumentError();
    }

    int dec = 0;
    int pow = 0;
    while (value > 0) {
      dec += (value % 10) * _pow(2, pow);
      pow += 1;
      value ~/= 10;
    }
    return dec;
  }
}
