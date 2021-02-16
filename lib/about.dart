import 'package:flutter/material.dart';

class About extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body:
      Container(
      child: Column(
        children: <Widget>[
          Center(
              child: CircleAvatar(
              backgroundImage: AssetImage("images/superhero.jpg"),
              radius: 70.0
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
             Text("A SG Bus Arrival App to show bus arrival timing, This bus app will also show you the SMRT and SBS load arrival time, bus routes, bus stops near you.",style: TextStyle(fontSize:20.0,color: Colors.white),textAlign: TextAlign.center,),
             Container(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: <Widget>[
                Icon(
                Icons.email,
                size: 50.0,
                color: Colors.black54,   ),
                Text("bus@gmail.com",style: TextStyle(fontSize:20.0,color: Colors.white)),
                   
                 ],

               ),

             ),
             Container(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: <Widget>[
              Icon(
                  Icons.phone,
                  size: 50.0,
                  color: Colors.black54,  
                       
              ),
              
              
              Text("(+65) 91234567",style: TextStyle(fontSize:20.0,color: Colors.white)),
                 ],

               ),

             )
             
             
            ],
          )
        ],
      ),
     
      ),
       backgroundColor: Colors.lightBlue,
    );
  }
}

