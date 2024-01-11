


void main()async {

	for(int i = 0;i<5;i++)
		print("in for 1");
	
	Future.delayed(Duration(seconds:5),()=> print("dellyed"));
	
	await print("end main");  /* This expression has type 'void' and can't be used.
	await print("end main");
	      ^
*/
}
