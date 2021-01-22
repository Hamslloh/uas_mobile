import 'package:cloud_firestore/cloud_firestore.dart';

class Koneksiproperti{
  static Koneksiproperti koneksi = Koneksiproperti();

  // deklarasi koleksi antar firebase
  CollectionReference db = Firestore.instance.collection("properti");

  Future<List<DocumentSnapshot>> GetDataProperti()async{
     QuerySnapshot result = await db.getDocuments();
     return result.documents;
  }

}