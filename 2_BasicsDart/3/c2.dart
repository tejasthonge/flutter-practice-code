class Demo {
  final int x;
  final String str;
  const Demo(this.x, this.str);
  void fun() {
    print(x);
    print(str);
  }
}

void main() {
  Demo obj = Demo(10,"amar");
  obj.fun();
}
