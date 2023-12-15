


//async 
/*
it is key word used handle multiple isolater in dart
*/
//await
/*
it is key wor used at call time befor the calling the name of the methond of function 
--by using the we can handle thir funtion or wait them 
*/

void fun() async{

	print("in fun");

}

void main() {

	for(int i= 0;i<5;i++)
		print("in for 1");
	Future.delayed(Duration(seconds:5),()=> await fun());
	
	for(int i =0;i<5;i++)
		print("in for 2");

	
}
