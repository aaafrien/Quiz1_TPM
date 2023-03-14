import 'package:flutter/material.dart';
import 'package:kuis_tpm/my_colors.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/afrien.png"),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(10),
              child: Text('Afrien Khoirunnisa Shobar',
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold)),
              decoration: BoxDecoration(
                color: MyColors.secondaryLight,
                borderRadius: BorderRadius.all(Radius.circular(12.0)),
              ),
            ),
            SizedBox(height: 10),
            Text(
              '123200093',
              style: TextStyle(fontSize: 20, fontFamily: 'Poppins'),
            ),
            SizedBox(height: 10),
            Text('IF-D', style: TextStyle(fontSize: 20, fontFamily: 'Poppins')),
            SizedBox(height: 10),
            Text('Designing',
                style: TextStyle(fontSize: 20, fontFamily: 'Poppins'))
          ],
        ),
      ),
    );
  }
}
