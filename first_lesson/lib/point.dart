// Dart imports:
import 'dart:math';

class Pointt {
  double x;
  double y;
  double z;

  Pointt({required this.x, required this.y, required this.z});

  static _sqDif(double crd1, double crd2) {
    return pow((crd1 - crd2), 2);
  }

  //расстояние между двумя точками в трехмерном пространстве
  distanceTo(Pointt endPoint) {
    return sqrt(
        _sqDif(x, endPoint.x) + _sqDif(y, endPoint.y) + _sqDif(z, endPoint.z));
  }

  //начало координат
  factory Pointt.origCoord() {
    return Pointt(x: 0, y: 0, z: 0);
  }

  //единичный вектор
  factory Pointt.unitVec() {
    return Pointt(x: 1, y: 1, z: 1);
  }
}
