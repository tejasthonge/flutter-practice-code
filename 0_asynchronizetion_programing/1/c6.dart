

Future<String> getOrader(){

        return Future.delayed(Duration(seconds:5),()=>"Buragar");

}

void main()async{

        print("start");

	String oradar = await getOrader();
        print(oradar);
        print("end");

}
/*

start 
Butagar
end
*/
