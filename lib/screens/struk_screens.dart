import 'package:flutter/material.dart';

class StrukScreens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: screenWidth,
          height: 852,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(color: Colors.white),
          child: Stack(
            children: [
              Container(
                width: screenWidth,
                height: 130,
                decoration: BoxDecoration(color: Color(0xFF4CC18C)),
              ),
              Container(
                margin: EdgeInsets.only(left: 16, top: 27),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    size: 22,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 246, top: 27),
                child: Text(
                  'Detail Pesanan',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 145, top: 179),
                child: Container(
                  width: 78,
                  height: 49,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/logo.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 167, top: 247),
                child: Text(
                  'Vitamart',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16, top: 321),
                child: Text(
                  '3-10-2023',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16, top: 348),
                child: Text(
                  'Nama',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 300, top: 348),
                child: Text(
                  'Bisma',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 300, top: 321),
                child: Text(
                  '05:08:10',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 167, top: 408),
                child: Text(
                  'Pesanan',
                  style: TextStyle(
                    color: Color(0xFF757575),
                    fontSize: 16,
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16, top: 442),
                child: Text(
                  'Nama Menu',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16, top: 469),
                child: Text(
                  'Chitato',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16, top: 523),
                child: Text(
                  'Momogi',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16, top: 590),
                child: Text(
                  'Subtotal',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16, top: 612),
                child: Text(
                  'Total',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16, top: 634),
                child: Text(
                  'Bayar',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16, top: 656),
                child: Text(
                  'Kembali',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16, top: 496),
                child: Text(
                  '2 X 13.000',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16, top: 550),
                child: Text(
                  '1 X 5.000',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 300, top: 496),
                child: Text(
                  '26.000',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 300, top: 550),
                child: Text(
                  '5.000',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 300, top: 590),
                child: Text(
                  '31.000',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 300, top: 612),
                child: Text(
                  '31.000',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 300, top: 634),
                child: Text(
                  '31.000',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 300, top: 656),
                child: Text(
                  '0',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 16, top: 581),
                child: Container(
                  width: 361,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        strokeAlign: BorderSide.strokeAlignCenter,
                        color: Color.fromARGB(255, 202, 196, 196),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 154, top: 749),
                child: Text(
                  'Terimakasih',
                  style: TextStyle(
                    color: Color(0xFF7F7F7F),
                    fontSize: 16,
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 88, top: 775),
                child: Text(
                  'Sudah berbelanja di Vitamart',
                  style: TextStyle(
                    color: Color(0xFF7F7F7F),
                    fontSize: 16,
                    fontFamily: 'Inder',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
