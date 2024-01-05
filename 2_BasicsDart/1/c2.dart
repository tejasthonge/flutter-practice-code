//assing the value to the instance varable
//--by using const constructor
//--this is mor usefule or

//for ex we can gives input not null type

import 'dart:io';

class Demo {
  final x;
  final str;

  const Demo(this.x, this.str);
  void fun() {
    print(x);
    print(str);
  }
}

void main() {
  print("enter the x");
  final x = int.parse(stdin.readLineSync()!);
  print("enter the str");
  final String str = stdin.readLineSync()!;
  Demo(x, str)
      .fun(); //creating the object of class demo and pass to parametor and that retun valuse is  objet of Demo class and we call to the fun method of the  demo class by using the theis object this use  is only one time
}

/*
in our app we dont have want the null type for ex
user input thir pass word but this aloww null type to awid this we use the final

final:
    --we can asine value at run time also

const :
    --we can assine the valus befor the compile tyme


*/
