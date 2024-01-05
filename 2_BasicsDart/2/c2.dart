class Demo {
  final x;
  const Demo(this.x);
}

class ChildDemo extends Demo {
  final String str;
  const ChildDemo(this.str, int l) : super(l);

  // int x = 20;
  void disData() {
    print(str);
    // print(this.x);
    print(x);
  }
}

void main() {
  ChildDemo obj = const ChildDemo("amr", 10);
  obj.disData();
}
