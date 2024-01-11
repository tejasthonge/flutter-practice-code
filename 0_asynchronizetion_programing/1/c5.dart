
//Future has two type complite of incomplit
//complit : it return value either exception
//-->`:w


Future<void> getOrader(){

	return Future.delayed(Duration(seconds:5),()=>throw Exception("Buragar sample"));

}

void main(){

	print("start");

	
	getOrader();
	print("end");

}
