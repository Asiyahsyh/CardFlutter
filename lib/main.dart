import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(new MaterialApp(
    home: new HalamanPertamaku(),
  ));
}

class HalamanPertamaku extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.pink[200],
      appBar: new AppBar(
        title: new Text("Portal Ramadhan"),
        backgroundColor: Colors.red,
      ),
      body: Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new CardSaya(
                icon: Icons.access_alarms_sharp,
                teks: "Jadwal Imsak",
                warnaIcon: Colors.pink),
            new CardSaya(
                icon: Icons.place,
                teks: "Cari Masjid Terdekat",
                warnaIcon: Colors.green),
            new CardSaya(
                icon: Icons.access_alarms_rounded,
                teks: "Jadwal Buka Puasa",
                warnaIcon: Colors.brown),
            new CardSaya(
                icon: Icons.music_note,
                teks: "Murotal Al-Quran",
                warnaIcon: Colors.black),
          ],
        ),
      ),
    );
  }
}

class CardSaya extends StatelessWidget {
  CardSaya({required this.icon, required this.teks, required this.warnaIcon});

  final IconData icon;
  final String teks;
  final Color warnaIcon;

  @override
  Widget build(BuildContext context) {
    return new Container(
        height: 180,
        padding: new EdgeInsets.all(3.0),
        color: Colors.pink,
        child: new Card(
          child: new Column(
            children: <Widget>[
              new Icon(
                icon,
                size: 80.0,
                color: warnaIcon,
              ),
              new Text(
                teks,
                style: new TextStyle(fontSize: 23.0),
              )
            ],
          ),
        ));
  }
}
