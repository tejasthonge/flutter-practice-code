//Future return value


Future<String> getOrader(){

	return Future.delayed(Duration(seconds:5),()=> "burgar");
}

void main(){

	print("start");
	var oradar = getOrader();

	oradar.then((val)=>print("oradar"));
	print("end");

}
/*
start
end
oradar
*/
