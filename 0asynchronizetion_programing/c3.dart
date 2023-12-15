
void fun(){
	
	print("call the fun");

}

void main(){


	for(int i =0 ;i<5;i++)
		print("for loop 1");
	
	Future.delayed(Duration(seconds:5),()=>fun());
	
	for(int i =0;i<5;i++ )
		print("for loop 2");



}

//chek the output 
//means in dart it follow by defolt asychonizetion 
//and future class is used to handele the asynchonizetion
//
