import 'package:flutter/material.dart';
import 'dart:math';

class HasilPersegiPanjang extends StatelessWidget {
  HasilPersegiPanjang({@required this.panjang_sisi, @required this.lebar_sisi});
  final int panjang_sisi;
  final int lebar_sisi;

  @override
  Widget build(BuildContext context) {
    int luas = panjang_sisi * lebar_sisi;
    int kll = 2 * (panjang_sisi + lebar_sisi);
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
              "Persegi Panjang Yang Memiliki Panjang = $panjang_sisi cm, lebar $lebar_sisi cm. Luasnya adalah $luas cm2, dan Kelilingnya adalah $kll cm",
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
