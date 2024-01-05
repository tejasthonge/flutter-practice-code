//assing the value to the instce varable in run time

class Demo {
  int? x;
  String? str;

  Demo(int x, String str) {
    print("in demo costrctor");
    this.x = x;
    this.str = str;
  }
  void fun() {
    print("in fun");
    print(x);
    print(str);
  }
}

void main() {
  print("start main");

  Demo obj = new Demo(10, "dashak");
  obj.fun();
}
