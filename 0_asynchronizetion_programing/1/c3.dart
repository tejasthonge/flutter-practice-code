

Future<String> getOrader(){

        return Future.delayed(Duration(seconds:5),()=>"Burager");

}

String getOraderMassage(){

        //String orader = getOrader();  //her also make Future
        Future<String> orader = getOrader();  //her also make Future

        return "You are order $orader";

}
void main() async {

        print("start");
        print(await getOraderMassage()); //her it return what type of it return but it return incomplite data 
                                        //means it Future type ,what kind of shoud been return
        print("end");   //it print last
                        //


}

