import 'package:flutter/material.dart';
 import 'landing.dart';
import 'main.dart';
void main() => runApp(Landing());

class Login extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      home:Scaffold(
        appBar: AppBar(
          title:Text('Login'),
        ),
        body: contentbody,
      ));

  }
}

  var contentbody = 
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.fromLTRB(15, 0, 15, 25),
              width: 100,
              height: 30,
              child: Center(
                child: Text(
                  ('Login'),
                  style: TextStyle(fontSize: 50.0),
                ),
              ),
            ),
          ]
        );

class MyCustomWidget extends StatelessWidget{
  @override 
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(18.0),
              child:TextField(
                decoration:InputDecoration(
                  hintText: 'Name', 
                  hintStyle: TextStyle(
                    fontWeight: FontWeight.w300, 
                    color: Colors.blue,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color:Colors.blue,
                    ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange),
                ),
                contentPadding: const EdgeInsets.all(20),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child:TextField(
              decoration:InputDecoration(
                hintText: 'Password',
                hintStyle: TextStyle(
                  fontWeight: FontWeight.w300,
                  color:Colors.blue),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color:Colors.blue,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.orange
                  ),
                ),
                contentPadding: const EdgeInsets.all(20),
              ),
            ),
          ),
        ],
      )
    );
  }  
}

var contentBody = Center(
  child:Column(mainAxisAlignment:MainAxisAlignment.center,
  children:<Widget>[
    MyCustomWidget(),

  ]
  ),
);


