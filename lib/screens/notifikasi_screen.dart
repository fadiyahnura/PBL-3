import 'package:flutter/material.dart';

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
                        fontSize: 20,
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
                        width: 70,
                        height: 12,
                        child: Text(
                          '26-01-2023',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
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
                        width: 70,
                        height: 12,
                        child: Text(
                          '02:10:30',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ),
                    ),

                    Positioned(
                      left: 225,
                      top: 91,
                      child: SizedBox(
                        width: 70,
                        height: 12,
                        child: Text(
                          '1x',
                          textAlign: TextAlign
                              .right, // Menghapus koma (,) yang tidak diperlukan
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
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
                        width: 70,
                        height: 12,
                        child: Text(
                          'Rp. 10.000',
                          textAlign: TextAlign
                              .right, // Menghapus koma (,) yang tidak diperlukan
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
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
                        width: 70,
                        height: 12,
                        child: Text(
                          'chitato',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
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
