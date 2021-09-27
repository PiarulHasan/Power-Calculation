import 'dart:math';

class Calculation {
  Calculation({this.n1, this.n2});

  int n1;
  int n2;

  int result;

  String calculations() {
    result = pow(n1, n2);
    return result.toString();
  }
}
