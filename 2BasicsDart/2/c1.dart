//Inheritance For flutter

class Demo {
  void fun() {
    print("in Demo fun method");
  }

  void gun() {
    print("in Demo gun method");
  }
}

class ChildDemo extends Demo {
  void gun() {
    print("in ChildDemp fun method");
  }
}

void main() {
  Demo obj = ChildDemo();
  obj.fun();
  obj.gun();

  ChildDemo obj1 = ChildDemo();
  obj1.fun();
  obj1.gun();
}
