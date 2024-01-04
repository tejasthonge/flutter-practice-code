class Demo {
  Demo() {
    print("in demo constructor");
  }

  void fun() {
    print("in fun");
  }
}

Demo objFun() {
  print("in objfun function");
  return Demo();
}

void main() {
  objFun().fun();
}


/*
OP:

in objfun function
in demo constructor
in fun
*/