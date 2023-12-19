


import 'dart:io';


void main(){


	File f = new File("c2w.txt");
	f.writeAsStringSync("course: Flutter");
//	print(write);
	
	Future<String> str = f.readAsString();
	str.then((data)=> print(data));

}
