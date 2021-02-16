import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:myfirstapp/editprofile.dart';

class user {
  String name;
  String email;
  String username;
  String password; 

  user(String name,String email,String username,String password) {
    this.name = name;
    this.email = email;
    this.username = username;
    this.password = password;
  }

  String get_name(){
    return this.name;
  }

  String get_email(){
    return this.email;
  }

  String get_username(){
    return this.username;
  }
  void set_name(name){
    this.name = name;

  }
  void set_email(email){
    this.email = email;
  }
  void set_username(username){
    this.username = username;
  }
  void set_password(password){
    this.password = password; 
  }

  String get_password(){
    return this.password;
  }
}

class storeUser{
List<user> mydata;
storeUser(){
  mydata = new List();


}
int get_Length(){
  return mydata.length;
}

user get_user(index){
  return mydata[index];
}

void update_user(user newuser){
  mydata.add(newuser);
}




}


storeUser myUser_Phone;
void  DataBase(){
  myUser_Phone = new storeUser();
  user CurrentUser = new user("Samuel Leow","111@gmail.com","samueleow",'12345678');
  myUser_Phone.update_user(CurrentUser);
}





class Profile extends StatelessWidget{
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
              Container(
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: <Widget>[
                
              Column(
                children: <Widget>[
                  Text("${myUser_Phone.get_user(0).get_name()}",style: TextStyle(fontSize:50.0,color: Colors.white)),
                  Text("${myUser_Phone.get_user(0).get_email()}",style: TextStyle(fontSize:30.0,color: Colors.white)),
                  Text("${myUser_Phone.get_user(0).get_username()}",style: TextStyle(fontSize:30.0,color: Colors.white)),
                  Text("${myUser_Phone.get_user(0).get_password()}",style: TextStyle(fontSize:30.0,color: Colors.white))
                
                ],
              )     
                 ],
               ),

             ),  

            ],
          )
          ,RaisedButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder:(context) => EditProfile()));
            },
          ),
        


        ],
      ),
      
      ),
        backgroundColor: Colors.lightBlue,
    );
  }
}

