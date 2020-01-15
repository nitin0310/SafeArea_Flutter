import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Home());
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool safetop=true;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: SafeArea(
          top: safetop,
          child: Scaffold(
              body: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text("This is a Safe Area Widget."),
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Center(
                      child: RaisedButton(
                        onPressed: (){
                          setState(() {
                            if(safetop==true)
                              {
                                safetop=false;
                              }
                            else{
                              safetop=true;
                            }
                          });
                        },
                        elevation: 5.0,
                        color: Colors.green,
                        child: Text("Enable Safe Area",style: TextStyle(
                            color: Colors.white
                        ),),
                      ),
                    ),
                  )
                ],
              )
          ),
        ),
      ),
    );
  }
}
