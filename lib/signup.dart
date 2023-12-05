import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:viewapp/screens/home_screen.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 320,
          height: 568,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Positioned(
                left: 41,
                top: 145,
                child: Container(
                  width: 227,
                  height: 320,
                  decoration: BoxDecoration(color: Color(0xFF4CC18C)),
                ),
              ),
              Positioned(
                left: 119,
                top: 111,
                child: Container(
                  width: 72,
                  height: 69,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: OvalBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 124,
                top: 128,
                child: Container(
                  width: 51,
                  height: 34,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/logo.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 100,
                top: 194,
                child: Text(
                  'REGISTRASI',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 62,
                top: 232,
                child: Container(
                  width: 177,
                  height: 36,
                  decoration: ShapeDecoration(
                    color: Color(0xFFECECEC),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 62,
                top: 284,
                child: Container(
                  width: 177,
                  height: 36,
                  decoration: ShapeDecoration(
                    color: Color(0xFFECECEC),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 62,
                top: 336,
                child: Container(
                  width: 177,
                  height: 36,
                  decoration: ShapeDecoration(
                    color: Color(0xFFECECEC),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 69,
                top: 240,
                child: Text(
                  'Username',
                  style: TextStyle(
                    color: Color(0xFF7D7575),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 70,
                top: 293,
                child: Text(
                  'Kata Sandi',
                  style: TextStyle(
                    color: Color(0xFF7D7575),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 74,
                top: 347,
                child: Text(
                  'Masukan Ulang Password',
                  style: TextStyle(
                    color: Color(0xFF7D7575),
                    fontSize: 10,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 86,
                top: 388,
                child: Container(
                  width: 137,
                  height: 36,
                  decoration: ShapeDecoration(
                    color: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 120,
                top: 397,
                child: Text(
                  'Buat Akun',
                  style: TextStyle(
                    color: Color(0xFFD9D9D9),
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 94,
                top: 438,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'Sudah Punya ',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      TextSpan(
                        text: 'akun?',
                        style: TextStyle(
                          color: Color(0xFF0084FF),
                          fontSize: 13,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
