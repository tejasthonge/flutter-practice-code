/*
Error: A value of type 'Future<String>' can't be returned from a function with return type 'String'.
 - 'Future' is from 'dart:async'.
	return Future.delayed(Duration(seconds:5),()=>"Burager");
*/


String getOrader(){
	
	return Future.delayed(Duration(seconds:5),()=>"Burager");
	
}

String getOraderMassage(){

	String orader = getOrader();

	return "You are order $orader";

}
void main(){

	print("start");
	print(getOraderMassage());
	print("end");


}
