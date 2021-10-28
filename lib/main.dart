import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    debugShowCheckedModeBanner: false,
    home: new HalamanPertama(),
    routes: <String, WidgetBuilder>{
      'HalamanPertama': (BuildContext context) => new HalamanPertama(),
      'HalamanKedua': (BuildContext context) => new HalamanKedua(),
    },
  ));
}

//Membuat Halaman Crad
class HalamanPertama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Portal Menu Akses Route"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: new IconButton(
          icon: new Icon(
            Icons.alarm,
            size: 50.0,
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'HalamanKedua');
          },
        ),
      ),
    );
  }
}

class HalamanKedua extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Jadwal Buka Puasa"),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: new IconButton(
          icon: new Icon(
            Icons.calendar_today,
            size: 50.0,
            color: Colors.red,
          ),
          onPressed: () {
            Navigator.pushNamed(context, 'HalamanPertama');
          },
        ),
      ),
    );
  }
}
