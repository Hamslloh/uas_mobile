import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Beranda"),
      ),
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/teamwork.png',height: 150,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(top: 40.0),
                  ),
                  Text("Selamat Datang di",style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 20)),
                ],),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                      Text("Aplikasi",style: TextStyle(
                      color: Colors.grey[800],
                      fontSize: 20)),
                      Text(" Properti",style: TextStyle(
                      color: Colors.grey[800],
                      fontWeight: FontWeight.bold,
                      fontSize: 20)),
                  ],
                ),
            ],
          ),
      ),
    );
  }
}