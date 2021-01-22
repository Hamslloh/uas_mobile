import 'package:flutter/material.dart';

class Detail_Kategori extends StatefulWidget {
  String nama;

  Detail_Kategori({this.nama});
  

  @override
  _Detail_KategoriState createState() => _Detail_KategoriState();
}

  
class _Detail_KategoriState extends State<Detail_Kategori> {
    

  @override

  List lokasi = [
      'Kasur ',
      'Meja',
  ];
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(widget.nama),
      ),
      body: new Container(
        child: _getIcon(widget.nama)
        ),
      
    );
  }

  Widget _getIcon(myNumber ) {
  if (myNumber == "Living Room")
    return Icon(Icons.ac_unit);
  else if (myNumber == "Bedroom Design Wall Decor")
    return Icon(Icons.home);
  else if (myNumber == "Workspace Interior")
    return Icon(Icons.wb_cloudy);
  else
    return Icon(Icons.wb_sunny);
}
}