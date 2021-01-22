import 'package:flutter/material.dart';
import 'package:reborn/beranda.dart';
import 'package:reborn/kategori.dart';
import 'package:reborn/pencarian.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Halaman Beranda'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedTabIndex=0;

  void _onNavBarTapped(int index){
    setState(() {
      _selectedTabIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {

     final _listPage=<Widget>[
      new Beranda(),
      new Kategori(),
      new Pencarian(),
    ];

    final _bottomNavBarItems=<BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title:Text('Beranda'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title:Text('Kategori'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.supervised_user_circle),
          title:Text('Pencarian'),
        ),
        //  BottomNavigationBarItem(
        //   icon: Icon(Icons.search),
        //   title:Text('Cari Penduduk'),
        // ),
    ];

    final _bottomNavBar=BottomNavigationBar(
      items: _bottomNavBarItems,
      currentIndex: _selectedTabIndex,
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.grey,
      onTap: _onNavBarTapped,
    );

    return Scaffold(
       body: Center(
        child:_listPage[_selectedTabIndex],
        
      ),
      bottomNavigationBar:_bottomNavBar,
    );
  }
}
