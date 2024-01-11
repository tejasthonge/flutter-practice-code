getName()=> print("amar");

void fun1(){

	print("----in fun 1 -----");
	
	for(int i = 0;i<5;i++){
		
		print("fun-1 for-1");
	}
	print("------befor deleyed-----");
	Future.delayed(Duration(seconds : 5),()=>getName());
	print("------after deleyed-----");
	for(int i = 5;i<10;i++){
		print("fun-1 for-2");
	}
	print("------end fun 1 ---");
}

void fun2(){

	print("-----in fun2 -------");
	for(int i =0 ;i<5;i++)
		print("fun 2");
	print("------end fun 2-----");

}
void main(){

	print("start main");
	fun2();
	fun1();
	print("end main");

}
