//Passing an object to function

class Demo {
  Demo() {
    print("in demo constructor");
  }
  void fun() {
    print("in fun method");
  }
}

void objFun(Demo obj) {
  print("in objFun Function");
  obj.fun();
}

void main() {
  Demo obj = Demo();
  objFun(obj);
}
