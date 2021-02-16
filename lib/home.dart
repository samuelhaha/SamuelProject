// import 'dart:js';

// import 'dart:html';

import 'package:flutter/material.dart';

class Info_Bus_arriving{
String locaiton;
double travelTime;
List<String> busList;
List<int> bus_Num_List;


Info_Bus_arriving(String newlocation,double travelTime,List<String> bus,List<int> bus_num){
  this.locaiton = newlocation ;
  this.travelTime = travelTime ;
  busList = bus;
  bus_Num_List = bus_num;
}
String get_location(){
  return this.locaiton;
}

double get_travelTime() {
  return travelTime;
}

String get_bus(index){
  return busList[index];
}

int get_bus_Num_List(index){
  return bus_Num_List[index];
}

}

List<Info_Bus_arriving> bus_LIST;
//setbus is the timing of each bus
List<String> setBus;
//setBus_num is for each bus number
List<int> setBus_num;


void _UpdateBus(){
  bus_LIST = new List();
  //First bus info
  setBus =  ["7:49","7:57","8:09"];
  setBus_num = [109,112,70];
  bus_LIST.add(new Info_Bus_arriving("Yio Chu Kang Interchange", 25, setBus, setBus_num));
  //second bus info
  setBus = ["7:51","7:58","8:07"];
  setBus_num = [31,11,701];
  bus_LIST.add( new Info_Bus_arriving("Sentosa Station", 30, setBus, setBus_num));
  //third bus info
  setBus = ["7:51","7:58","8:09"];
  setBus_num = [51,111,201];
  bus_LIST.add( new Info_Bus_arriving("Harbourfront Station", 55, setBus, setBus_num));


  print(bus_LIST[0].get_location());


}


class Home extends StatelessWidget{
 
  @override
  Widget build(BuildContext context) {
     _UpdateBus();
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height/1.3,
      child: ListView(
        children: List.generate(bus_LIST.length, (index) =>   Container(
      padding: EdgeInsets.all(15.0),
      margin: EdgeInsets.symmetric(vertical: 15.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey[300],
        ),
        borderRadius: BorderRadius.circular(25.0)
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 5.0,
                    ),
                    Icon(
                        Icons.directions_bus,
                        size: 50.0,
                        color: Colors.black54,  
                    ),
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: "Travel Time: ",
                              style: TextStyle(color: Colors.black87)),
                          TextSpan(
                              text: "${bus_LIST[index].travelTime} mins",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${bus_LIST[index].get_bus(0)}",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 3.0,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.directions_bus,
                                  color: Colors.black54,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 2.0, horizontal: 3.0),
                                  decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(9.0),
                                  ),
                                  child: Text(
                                    "${bus_LIST[index].get_bus_Num_List(0)}",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(width: 0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${bus_LIST[index].get_bus(1)}",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 3.0,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.directions_bus,
                                  color: Colors.black54,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 2.0, horizontal: 3.0),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(9.0),
                                  ),
                                  child: Text(
                                    "${bus_LIST[index].get_bus_Num_List(1)}",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(width: 9),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${bus_LIST[index].get_bus(2)}",
                              style: TextStyle(color: Colors.grey),
                            ),
                            SizedBox(
                              height: 3.0,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.directions_bus,
                                  color: Colors.black54,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      vertical: 2.0, horizontal: 3.0),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(9.0),
                                  ),
                                  child: Text(
                                    "${bus_LIST[index].get_bus_Num_List(2)}",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            )
                          ],
                        )
                        
                      ],
                    )
                  ],
                ),
              ),
              Text(
                "19:46",
                style:
                    Theme.of(context).textTheme.body2.apply(color: Colors.blue),
              ),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 15,
                        height: 15,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.orange.withOpacity(.3),
                          border: Border.all(color: Colors.orange, width: 3.0),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("${bus_LIST[index].get_location()}",
                          style: Theme.of(context).textTheme.subtitle),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      
    )),

      ),

    );

  }
}














