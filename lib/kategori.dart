import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:reborn/detail_kategori.dart';
import 'package:reborn/koneksi.dart';


class Kategori extends StatefulWidget {
  @override
  _KategoriState createState() => _KategoriState();
}

class _KategoriState extends State<Kategori> {
  List<DocumentSnapshot> dtproperti = List();
  bool loading = false;

  AmbilData()async{
    loading = true;
    dtproperti = await Koneksiproperti.koneksi.GetDataProperti();
    
    setState(() {
      loading = false;
    });
  }

   @override
  void initState(){
    super.initState();
    AmbilData();
  }

    List lokasi = [
        'Living Room',
        'Bedroom Design Wall Decor',
        'Workspace Interior',
        'Sofa Design',
    ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Kategori"),
      ),
      // body: loading ? Center(child: CircularProgressIndicator(),)
      // :ListView.builder(
        
      //   padding: EdgeInsets.all(7),
      //   itemCount: dtproperti.length,
      //   itemBuilder: (context, indek){
      //     final item = dtproperti[indek];
      //     return Card(
      //       elevation: 0,
      //       shape:Border(left: BorderSide(color: Colors.blue, width: 5)),
      //       child: ListTile(
      //       // title: Text("nama penduduk"),
      //       contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
      //       subtitle: Row(
      //         children: <Widget>[
      //           Expanded(
      //             child: Text(item.data['nama_properti'],style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18,)),
      //           ),
      //           Expanded(
      //             child: Text(item.data['harga'],style: TextStyle(color: Colors.black,fontSize: 14,)),
      //           ),
      //         ],
      //       ),
      //     ),
      //       );
           
      //   },
      // ),


      body: new Container(
        child: ListView(
          children: lokasi.map((nama) {
            return ListTile(
              leading: Icon(Icons.arrow_forward_ios),
              title: Text(nama),
              onTap: () {
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Detail_Kategori(nama:nama)));
              },
            );
          }).toList(),
        ),
      ),


    );
  }
}