import 'package:flutter/material.dart';
import 'package:kuis_tpm/geometrics.dart';
import 'package:kuis_tpm/hitung_segitiga.dart';
import 'package:kuis_tpm/my_colors.dart';
import 'package:kuis_tpm/profile.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
                    MaterialPageRoute(builder: (context) => Profile()));
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                primary: MyColors.primary,
              ),
              child: Text(
                "Profile",
                style: TextStyle(
                    color: Colors.white, fontSize: 18, fontFamily: 'Poppins'),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Geometrics()));
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4)),
                primary: MyColors.primary,
              ),
              child: Text(
                "Geometrics Calculate",
                style: TextStyle(
                    color: Colors.white, fontSize: 18, fontFamily: 'Poppins'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
