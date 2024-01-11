

getName()=> print("Amaar");
void main(){

	print("start main");
	
	for(int i = 0;i<10;i++){

		print("for loop 1");
	}
	Future.delayed(Duration(seconds:5),()=> print("delayed"));
	
	for(int i = 0 ;i <10;i++){
		print("for loop 2");
	}
	print("end main");
}
