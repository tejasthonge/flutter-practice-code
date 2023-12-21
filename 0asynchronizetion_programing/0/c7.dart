

void fun(){

	print("in fun");
}

int gun(){
	
	print("in gun");
	return 0;
}

void main() async{

	print("start main");
	
	Future.delayed(Duration(seconds: 5),()=>print("delayed"));
	
	int x = await gun();
	
	


}
