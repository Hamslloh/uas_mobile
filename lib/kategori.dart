import 'package:flutter/material.dart';

class Kategori extends StatefulWidget {
  @override
  _KategoriState createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Kategori"),
      ),
      body: ListView(
        padding: EdgeInsets.only(top:20.0,right:20.0,left:20.0),
        children: <Widget>[
          Container(
            child:Text("kategori"),
          ),
        ],),
    );
  }
}