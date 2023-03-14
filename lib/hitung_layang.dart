import 'dart:math';

import 'package:flutter/material.dart';
import 'package:kuis_tpm/my_colors.dart';

class HitungLayang extends StatefulWidget {
  const HitungLayang({Key? key}) : super(key: key);

  @override
  State<HitungLayang> createState() => _HitungLayangState();
}

class _HitungLayangState extends State<HitungLayang> {
  final TextEditingController _d1Controller = TextEditingController();
  final TextEditingController _d2Controller = TextEditingController();
  double _luas = 0;
  double _kel = 0;

  void _hitungLayang() {
    double d1 = double.parse(_d1Controller.text);
    double d2 = double.parse(_d2Controller.text);
    setState(() {
      _luas = 0.5 * d1 * d2;
      _kel = 2 * (sqrt((d1 * d1 / 4) + (d2 * d2 / 4)));
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
            Text('Hitung Luas & Keliling Layang-layang',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 25),
            TextField(
              controller: _d1Controller,
              keyboardType: TextInputType.number,
              style: TextStyle(fontFamily: 'Poppins'),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Diagonal 1',
                  hintText: 'input diagonal 1'),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _d2Controller,
              keyboardType: TextInputType.number,
              style: TextStyle(fontFamily: 'Poppins'),
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Diagonal 2',
                  hintText: 'input diagonal 2'),
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: _hitungLayang,
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
              'Luas Layang-layang : $_luas',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Keliling Layang-layang :',
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
            Text(
              '$_kel',
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
