class Number {
  int _num = 0;

  get num => _num;

  int increment() => ++_num;
  int decrement() => --_num;
  int reset() => _num = 0;
}
