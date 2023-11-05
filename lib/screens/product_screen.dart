import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viewapp/widgets/bottom_sheet.dart';
import 'package:viewapp/screens/belanja_screen.dart';

// ignore: must_be_immutable
class ProductScreen extends StatelessWidget {
  String img;
  ProductScreen(this.img);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topCenter,
                height: MediaQuery.of(context).size.height / 1.7,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 159, 158, 160),
                  image: DecorationImage(
                    image: AssetImage('images/$img.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Icon(
                            Icons.arrow_back_ios_new,
                            size: 22,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.only(top: 8, left: 15, right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            img,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "\Rp 10.000",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF4CC18C).withOpacity(0.7),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Lorem Ipsum adalah contoh teks atau dummy dalam industri percetakan dan penataan huruf atau typesetting. Lorem Ipsum telah menjadi standar contoh teks sejak tahun 1500an, saat seorang tukang cetak yang tidak dikenal mengambil sebua",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                    ),
                    SizedBox(height: 85),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BelanjaScreen()));
                          },
                          child: Container(
                            padding: EdgeInsets.all(18),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(
                              CupertinoIcons.cart_fill,
                              size: 22,
                              color: Color(0xFF4CC18C),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              backgroundColor: Colors.transparent,
                              context: context,
                              builder: (context) {
                                return CustomBottomSheet();
                              },
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              vertical: 18,
                              horizontal: 70,
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xFF4CC18C),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Text(
                              "Pesan Sekarang",
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w600,
                                letterSpacing: 1,
                                color: Colors.white.withOpacity(0.8),
                              ),
                            ),
                          ),
                        )
                      ],
                    )
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
