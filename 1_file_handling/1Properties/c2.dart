

import 'dart:io';

void main() async {

File f = new File("c2.txt");

await f.create();


final data = await f.lengthSync();  //due to this await it waite upto file cretiion then exicute this line
print(data);

//sync 1

final value = f.length();
value.then((val)=> print(val));







}
