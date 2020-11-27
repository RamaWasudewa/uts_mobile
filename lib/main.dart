import 'package:flutter/material.dart';
import 'persegi.dart';
import 'persegi_panjang.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.home,
            color: Colors.white,
          ),
          title: Text('Penghitung Luas Dan Keliling Persegi'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              Picture(),
              TextName(),
              RowCardOne(),
              RowCardTwo(),
            ],
          ),
        ),
      ),
    );
  }
}

class Picture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        'img/homepage.png',
        width: 400,
        height: 150,
      ),
    );
  }
}

class TextName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        'Silakan Pilih Jenis Perhitungan yang Akan Dilakukan !',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 23,
        ),
      ),
      margin: const EdgeInsets.all(2.0),
    );
  }
}

class RowCardOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          width: 400,
          height: 160,
          margin: const EdgeInsets.only(top: 5.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(2.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.crop_square,
                    size: 60,
                    color: Colors.blueGrey,
                  ),
                  Text(
                    'Persegi',
                    style: TextStyle(color: Colors.blue, fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Persegi()),
                      );
                    },
                    child: const Text('Mulai', style: TextStyle(fontSize: 10)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class RowCardTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          width: 400,
          height: 160,
          margin: const EdgeInsets.only(top: 5.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.all(2.0),
              child: Column(
                children: <Widget>[
                  Icon(
                    Icons.crop_16_9,
                    size: 60,
                    color: Colors.blueGrey,
                  ),
                  Text(
                    'Persegi Panjang',
                    style: TextStyle(color: Colors.blue, fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PersegiPanjang()),
                      );
                    },
                    child: const Text('Mulai', style: TextStyle(fontSize: 10)),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
