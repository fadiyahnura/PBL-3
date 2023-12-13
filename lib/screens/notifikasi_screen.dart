import 'package:flutter/material.dart';
import 'package:viewapp/screens/struk_screens.dart';

class NotifikasiScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons
                            .arrow_back_ios, // Mengganti Icons.arrow_back_ios_new
                        size: 22,
                      ),
                    ),
                    Text(
                      "Notifikasi",
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.more_horiz,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: 350,
                height: 600,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(color: Colors.white),
                child: Stack(
                  children: [
                    Positioned(
                      left: 8,
                      top: 73,
                      child: SizedBox(
                        width: 100,
                        height: 20,
                        child: Text(
                          '26-01-2023',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 225,
                      top: 73,
                      child: SizedBox(
                        width: 90,
                        height: 15,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF7A8882), // Background color
                            borderRadius: BorderRadius.all(Radius.circular(
                                8.0)), // Adjust the radius as needed
                          ),
                          child: Center(
                            child: Text(
                              'Diproses',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white, // Text color
                                fontSize: 14,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w400,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 225,
                      top: 91,
                      child: SizedBox(
                        width: 90,
                        height: 15,
                        child: Text(
                          '1x',
                          textAlign: TextAlign
                              .right, // Menghapus koma (,) yang tidak diperlukan
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 225,
                      top: 106,
                      child: SizedBox(
                        width: 90,
                        height: 15,
                        child: Text(
                          'Rp. 10.000',
                          textAlign: TextAlign
                              .right, // Menghapus koma (,) yang tidak diperlukan
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 11,
                      top: 97,
                      child: SizedBox(
                        width: 90,
                        height: 15,
                        child: Text(
                          'chitato',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 440,
                      left: 0,
                      right: 0,
                      child: SizedBox(
                        width: 150, // Sesuaikan dengan lebar yang diinginkan
                        height: 20, // Sesuaikan dengan tinggi yang diinginkan
                        child: InkWell(
                          onTap: () {
                            // Tambahkan navigasi ke halaman lain di sini

                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => StrukScreens()),
                            );
                          },
                          child: Text(
                            'Tampilkan Detail',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(
                                  0xFF4CC18C), // Ubah warna sesuai keinginan
                              fontSize: 16,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              decoration: TextDecoration
                                  .underline, // Menambahkan garis bawah sebagai indikasi tautan
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                    ),

                    // Tambahkan garis pemisah di sini
                    Positioned(
                      left: 0,
                      top: 170,
                      child: Container(
                        width: 320,
                        height: 1,
                        color: Colors.grey, // Warna garis pemisah
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
