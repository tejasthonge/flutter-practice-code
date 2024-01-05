class Demo {
  int x;
  String str;
  Demo(this.x, this.str);
  void fun() {
    print(x);
    print(str);
  }
}

void main() {
  Demo obj = Demo(10,"amar");
  obj.fun();
}
