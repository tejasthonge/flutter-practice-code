

//Propertes And Methods of File class: 
/*
following are same poperties of file class 
*/

import 'dart:io';

void main() async{

	File f = new File("C2W.txt");

	await f.create();    //it wait upto file ctetion the next line will exucute
//porerties:
	print(f.absolute);  //return the absulute path of the file (pwd) past working directory
	print(f.path);       //return the current path (only file name)
//methods:
	print(f.lastAccessed());  //return time of last accassed
	print(f.lastModified());   //return time of last moddifiction or recent moddifiction
	print(f.length());	//return the size
	print(f.exists());	// return true or false depending upon the file present or not




}
