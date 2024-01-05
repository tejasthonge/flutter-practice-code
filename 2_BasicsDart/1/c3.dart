

//constant constructor return same objet not new object is created

class Demo {
  final int x;
  const Demo(this.x);
  void fun() {
    print(x);
  }
}

void main() {
  Demo obj1 = const Demo(10);
  Demo obj2 = const Demo(10);

  print(obj1.hashCode);//493490318
  print(obj2.hashCode);//493490318

  //both object are same address menas constat constrructr create same object when we assine the same value to the instece variable in the x we pass 10 or 10
  //but we must use of const either it writne the anathor object
  //as follow
  Demo obj = Demo(10);
  print(obj.hashCode);  //it retrurn deffarance address 666742075
}
