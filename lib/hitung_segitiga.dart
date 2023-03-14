import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kuis_tpm/my_colors.dart';

class HitungSegitiga extends StatefulWidget {
  const HitungSegitiga({Key? key}) : super(key: key);

  @override
  State<HitungSegitiga> createState() => _HitungSegitigaState();
}

class _HitungSegitigaState extends State<HitungSegitiga> {
  final TextEditingController _alasController = TextEditingController();
  final TextEditingController _tinggiController = TextEditingController();
  final TextEditingController _kelController = TextEditingController();
  double _luas = 0;
  double _kel = 0;

  void _hitungSegitiga() {
    double alas = double.parse(_alasController.text);
    double tinggi = double.parse(_tinggiController.text);
    double sisi = sqrt((tinggi * tinggi) + (alas * alas / 4));
    setState(() {
      _luas = 0.5 * alas * tinggi;
      _kel = alas + sisi + sisi;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Hitung Luas & Keliling Segitiga',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 25),
            TextField(
              controller: _alasController,
              keyboardType: TextInputType.number,
              style: TextStyle(fontFamily: 'Poppins'),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Alas',
                  hintText: 'input alas'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _tinggiController,
              keyboardType: TextInputType.number,
              style: TextStyle(fontFamily: 'Poppins'),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Tinggi',
                  hintText: 'input tinggi'),
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: _hitungSegitiga,
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                primary: MyColors.secondaryLight,
              ),
              child: Text(
                "Hitung",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Luas Segitiga : $_luas',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Keliling Segitiga : $_kel',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
