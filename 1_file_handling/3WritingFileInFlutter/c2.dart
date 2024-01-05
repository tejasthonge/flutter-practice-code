//Deletting the file 


import 'dart:io';

void main() async{


	File f = new File("c2.txt");

	if(f.existsSync()){
		f.delete();
		print("file deleted ");
	}
	else{
		print("not present the file fist create then delete");
		await f.create();
		print("ok created run agian");
	}


}
