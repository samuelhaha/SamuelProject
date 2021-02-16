import 'package:flutter/material.dart';
import 'main.dart';
class Landing extends StatefulWidget {
  Landing({Key key}) : super(key: key);

  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(   
      title:'Go Carefree Bus',
      home:Scaffold(
  // resizeToAvoidBottomInset: true,
  // resizeToAvoidBottomPadding: true,
appBar: null,
body:Stack(
  children: <Widget>[
Image.asset('images/map.png',width: double.infinity, height: double.infinity,alignment: Alignment.center,fit: BoxFit.cover,),
      Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
        Container(
          
          height: 350,
          child:Text('Go Carefree Bus',style: TextStyle(fontSize: 50,backgroundColor: Colors.green),)),
        Center(
          child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[

          RaisedButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=> MyApp()));
          }, child: Text('Login'),),
          
          RaisedButton(
              child: Text('Register'),
              onPressed: (){
              
                      },
                    ),
                    ],
                  ),
                ),
              ],
            )
          ),
        ]
      )
      )
    );
  }
}