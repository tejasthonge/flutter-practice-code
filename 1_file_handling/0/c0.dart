import "dart:io";

void main(){

//	File f  = new File();  //here we requre one arrgumets that is name of file in String type
	File f1  = new File("C2W.txt");

	print(f1.runtimeType); //_File
	
	//before call the create methond on object f1 we can not create file on harddisk

	//call to the create method of class file

	f1.create();
	print("created file chek");
	
	

	

}

