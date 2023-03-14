import 'package:flutter/material.dart';
import 'package:kuis_tpm/hitung_segitiga.dart';
import 'package:kuis_tpm/my_colors.dart';

import 'hitung_layang.dart';

class Geometrics extends StatelessWidget {
  const Geometrics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            width: 200,
            child: Image.asset("assets/logo.png"),
          ),
          SizedBox(
            height: 40,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HitungSegitiga()));
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              primary: MyColors.secondaryLight,
            ),
            child: Text(
              "Segitiga",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HitungLayang()));
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              primary: MyColors.secondaryLight,
            ),
            child: Text(
              "Layang-layang",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
          ),
        ]),
      ),
    );
  }
}
