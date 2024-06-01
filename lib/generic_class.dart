class Foo<T> {
  T _value;

  Foo(this._value);

  T get value => _value;
}

final foo = Foo(42);
final foo2 = Foo('42');

void main() {
  print(foo.value);
  print(foo2.value);
}
