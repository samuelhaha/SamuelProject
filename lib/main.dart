import 'package:flutter/material.dart';
import 'package:myfirstapp/register.dart';
import 'drawer.dart';
import 'home.dart';
import 'profile.dart';
import 'landing.dart';
import 'about.dart';
// import 'login.dart';
// import 'landing.dart';
import 'package:flutter/material.dart';






void main(){
    DataBase();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  //This Widget is the root of your application 
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String title = 'Home';
  int index = 0;
  List<Widget> list = [Home(),Profile(),About()];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        //body:Home(),
        //drawer: MyDrawer(),
        body:list[index],
        drawer: MyDrawer(onTap:(context,i,txt){
            setState( () { index = i;
                          title = txt;
                          Navigator.pop(context);
                        });
          }
        ),
      ),
    );
  }
}

