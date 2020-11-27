import 'package:flutter/material.dart';
import 'hasil_persegi_panjang.dart';

class PersegiPanjang extends StatefulWidget {
  @override
  _PersegiPanjang createState() => _PersegiPanjang();
}

class _PersegiPanjang extends State<PersegiPanjang> {
  int panjang;
  int lebar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" Penghitung Luas dan Keliling Persegi"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset('img/rumus_persegi_panjang.png',
                  fit: BoxFit.fitWidth),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                        child: new Theme(
                          data: new ThemeData(
                              primaryColor: Colors.blue,
                              primaryColorDark: Colors.blue),
                          child: new TextFormField(
                            onChanged: (txt) {
                              setState(() {
                                panjang = int.parse(txt);
                              });
                            },
                            keyboardType: TextInputType.number,
                            decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.blue)),
                                hintText:
                                    'Masukan Panjang Sisi Persegi Panjang',
                                labelText: 'Panjang Sisi Persegi Panjang',
                                prefixIcon: const Icon(
                                  Icons.straighten,
                                  color: Colors.blue,
                                ),
                                prefixText: ' ',
                                suffixText: 'cm',
                                suffixStyle:
                                    const TextStyle(color: Colors.blue)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: new Theme(
                          data: new ThemeData(
                              primaryColor: Colors.blue,
                              primaryColorDark: Colors.blue),
                          child: new TextFormField(
                            onChanged: (txt) {
                              setState(() {
                                lebar = int.parse(txt);
                              });
                            },
                            keyboardType: TextInputType.number,
                            decoration: new InputDecoration(
                                border: new OutlineInputBorder(
                                    borderSide:
                                        new BorderSide(color: Colors.blue)),
                                hintText: 'Masukan Lebar Sisi Persegi Panjang',
                                labelText: 'Lebar Sisi Persegi Panjang',
                                prefixIcon: const Icon(
                                  Icons.straighten,
                                  color: Colors.blue,
                                ),
                                prefixText: ' ',
                                suffixText: 'cm',
                                suffixStyle:
                                    const TextStyle(color: Colors.blue)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 20, left: 10, right: 10, bottom: 20),
                    child: FlatButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                          side: BorderSide(color: Colors.blue)),
                      color: Colors.blue,
                      textColor: Colors.black,
                      padding: EdgeInsets.all(10.0),
                      onPressed: () {
                        if (panjang == null || lebar == null) {
                          return 'Diisi Dulu Boss';
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HasilPersegiPanjang(
                                      panjang_sisi: panjang,
                                      lebar_sisi: lebar)));
                        }
                      },
                      child: Text(
                        "Hitung",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
