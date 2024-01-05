
import 'dart:io';


void main() async{

	File f  = new File("xyz.txt");

	print(f.runtimeType);

	await f.create();
	print("file created");	
}
