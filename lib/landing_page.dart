import 'package:flutter/material.dart';
import 'package:viewapp/signup.dart';
import 'package:viewapp/login.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      height: 568,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(color: Color(0xFF4CC18C)),
      child: Stack(
        children: [
          // Logo
          Positioned(
            left: 120,
            top: 50,
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage('images/logo.png'),
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          // Text "Selamat datang di Vitamart!"
          Positioned(
            left: 75,
            top: 180,
            child: Text(
              'Selamat datang di Vitamart!',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 1.2,
              ),
            ),
          ),
          // Text "Mau Belanja? di Vitamart aja"
          Positioned(
            left: 75,
            top: 210,
            child: Text(
              'Mau Belanja? di Vitamart aja',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 1.2,
              ),
            ),
          ),
          // Text "Silahkan"
          Positioned(
            left: 140,
            top: 240,
            child: Text(
              'Silahkan',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 1.2,
              ),
            ),
          ),
          // Button "Buat Akun"
          Positioned(
            left: 75,
            top: 275,
            child: GestureDetector(
              onTap: () {
                // Navigate to the signup page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signup()),
                );
              },
              child: Container(
                width: 184,
                height: 36,
                decoration: ShapeDecoration(
                  color: Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Buat Akun',
                    style: TextStyle(
                      color: Color(0xFFA08F8F),
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ),
          // Button "Masuk"
          Positioned(
            left: 75,
            top: 320,
            child: GestureDetector(
              onTap: () {
                // Navigate to the login page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Login()),
                );
              },
              child: Container(
                width: 184,
                height: 36,
                decoration: ShapeDecoration(
                  color: Color(0xFFD9D9D9),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Masuk',
                    style: TextStyle(
                      color: Color(0xFFA08F8F),
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
