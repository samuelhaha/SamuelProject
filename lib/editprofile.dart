import 'package:flutter/material.dart';
import 'profile.dart';

class EditProfile extends StatelessWidget{
      var name;
    var password;
    var email;
    var username;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title:Text('Edit Profile')),
      body:Container(
        
        width: MediaQuery.of(context).size.width,
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
                onChanged: (event){
                  name = event;


                },
                obscureText: true,
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Name',
              ),
            ),
            TextField(
                              onChanged: (event){
                  email = event;


                },
                obscureText: true,
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email',
              ),
            ),
            TextField(
                              onChanged: (event){
                  username = event;


                },
                obscureText: true,
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
              ),
            ),
            TextField(
                              onChanged: (event){
                  password = event;


                },
                obscureText: true,
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
            TextButton(onPressed: (){
                myUser_Phone.get_user(0).set_password(this.password);
                myUser_Phone.get_user(0).set_email(this.email);
                myUser_Phone.get_user(0).set_name(this.name);
                myUser_Phone.get_user(0).set_username(this.username);

            }, child: Text('Save')),
          ],
        ),
      )
    );
  }
}