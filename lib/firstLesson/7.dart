
extension NumSqrt on num{

  static double _pow(double a, int pow)
  {
    double result = 1;
    for (int i = 0; i < pow; i++)
    {
      result *= a;
    }
    return result;
  }

  static _abs(num mod){
    if (mod < 0)
    {
      return mod * (-1);
    }
    return mod;
  }

  static double sqrtN(double A, double n)
  {
    try {
      if (A < 0) {
        throw ArgumentError();
      }

      double eps = 0.000001;
      double x0 = A / n;
      double x1 = 0.0;
      var nFinal = n;

      //если степень равна нулю, то возвращаем 1
      if (n == 0) {
        return 1;
      }

      //работаем с положительными степенями
      if (n < 0) {
        n *= (-1);
      }

      //можно преобразовать в корень н-степени
      if (n > 0 && n <= 1) {
        if (nFinal >= 0) {
          return _pow(A, (1 ~/ n));
        } else {
          return 1 / _pow(A, (1 ~/ n));
        }
      }

      //для степени, модуль которой > 1
      x1 = (1 / n) * ((n - 1) * x0 + A / _pow(x0, (n - 1).toInt()));



      while (_abs(x1 - x0) > eps) {
        x0 = x1;
        x1 = (1 / n) * ((n - 1) * x0 + A / _pow(x0, (n - 1).toInt()));
      }

      //для отрицательной степени
      if (nFinal < 0) {
        x1 = (1 / x1) * (-1);
      }

      return x1;

    } on Exception catch (e) {
      print("Возникло исключение $e");
      return 0;

    } on ArgumentError {
      print("Check");
      return 0;

    } catch (e) {
      print("Unknown error $e");
      return 0;
    }
  }
}



