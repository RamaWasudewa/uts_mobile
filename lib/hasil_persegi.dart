import 'package:flutter/material.dart';
import 'dart:math';

class HasilPersegi extends StatelessWidget {
  HasilPersegi({@required this.panjang_sisi});
  final int panjang_sisi;

  @override
  Widget build(BuildContext context) {
    int luas = panjang_sisi * panjang_sisi;
    int kll = 4 * panjang_sisi;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('Hasil Perhitungan'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Persegi Yang Panjang Sisinya = $panjang_sisi cm,  Luasnya adalah $luas cm2, dan Kelilingnya adalah $kll cm",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
