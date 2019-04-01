import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int hasil = 0;

  TextEditingController angka1 = new TextEditingController();
  TextEditingController angka2 = new TextEditingController();

  tambah(){
    setState(() {
          hasil =int.parse(angka1.text)+int.parse(angka2.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator"),
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            padding: new EdgeInsets.all(5.0),
            child: new TextField(
              controller: angka1,
              keyboardType: TextInputType.number,
              decoration:
                  new InputDecoration(labelText: "Masukkan Angka Pertama"),
            ),
          ),
          new Container(
            padding: new EdgeInsets.all(5.0),
            child: new TextField(
              controller: angka2,
              keyboardType: TextInputType.number,
              decoration:
                  new InputDecoration(labelText: "Masukkan Angka Kedua"),
            ),
          ),
          new Container(
            padding: new EdgeInsets.all(5.0),
            child: new FlatButton(
              onPressed: () {
                tambah();
              },
              color: Colors.orange,
              child:
                  new Text("Tambah", style: new TextStyle(color: Colors.white)),
            ),
          ),
          new Padding(
            padding: new EdgeInsets.all(10.0),
          ),
          new Center(
            child: new Text(hasil.toString(), style: new TextStyle(fontSize: 30.0),),
          )
        ],
      ),
    );
  }
}
