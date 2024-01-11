
Future<String> getOrader(){

        return Future.delayed(Duration(seconds:5),()=>"Burager");
		//this Burrager String will loss
}
Future<String> getOraderMassage() async{


       	String orader = await getOrader();  // we are use awit so data are return in string 

        return "You are order $orader";

}
void main()async {//also use Future<void>

        print("start");
        print(await getOraderMassage()); //burager are printed 
                                        //means it Future type 
	
	ptint("end");  //we stop this event
 //it print last
                        //


}

/*
start
You are order Burager
end


*/
