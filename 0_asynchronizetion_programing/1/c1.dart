/*
change to string to Future<String>
*/

Future<String> getOrader(){
	
	return Future.delayed(Duration(seconds:5),()=>"Burager");
	
}

String getOraderMassage(){

	//String orader = getOrader();  //her also make Future
	Future<String> orader = getOrader();  //her also make Future

	return "You are order $orader";

}
void main(){

	print("start");
	print(getOraderMassage());
	print("end");   //directly  end print not wait for the call of getOrader 
			//means it work asynchronusly


}
