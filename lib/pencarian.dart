import 'package:flutter/material.dart';

import 'package:flutter/material.dart';


class Pencarian extends StatefulWidget {
  @override
  _PencarianState createState() => _PencarianState();
}

class _PencarianState extends State<Pencarian> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text("Pencarian"),
      ),
      body: ListView(
        children: <Widget>[
        Container(
          margin: EdgeInsets.only(top:10.0),
          padding:EdgeInsets.only(left:20.0,right:20.0),
          child:Form(
            child:Column(
              children: <Widget>[
                // form pencarian
                TextFormField(
                  decoration:InputDecoration(
                    labelText:'Keyword',
                  )
                ),
                SizedBox(
                  height: 20.0,
                ),
                SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    child: Text("Cari"),
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(5.0),),
                    color: Colors.green,
                    textColor: Colors.white,
                    padding: EdgeInsets.all(15),
                    onPressed: (){
                      // tautan proses
                    },
                    )
                )
              ],
            )
          )
        ),
        ],
      ),
      
    );
  }
}