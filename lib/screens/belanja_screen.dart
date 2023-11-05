import 'package:flutter/material.dart';
import 'package:viewapp/widgets/cart_item_samples.dart';

class BelanjaScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<BelanjaScreen> {
  bool selectAll = false;
  String paymentMethod = "COD"; // Default payment method

  void toggleSelectAll(bool value) {
    setState(() {
      selectAll = value;
    });
  }

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
                        Icons.arrow_back_ios_new,
                        size: 22,
                      ),
                    ),
                    Text(
                      "Keranjang Anda",
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
                padding: EdgeInsets.only(top: 15),
                child: Column(
                  children: [
                    CartItemSamples(),
                    SizedBox(height: 30),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Pilih Semua",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Checkbox(
                            activeColor: Color(0xFF4CC18C),
                            value:
                                selectAll, // Menggunakan variabel selectAll untuk mengontrol status checkbox
                            onChanged: (value) {
                              // Panggil toggleSelectAll untuk memperbarui status selectAll
                              toggleSelectAll(value!);
                            },
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total pembayaran",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "\Rp 10.000",
                            style: TextStyle(
                              color: Color(0xFF4CC18C),
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Metode Pembayaran:",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 30),
                        Column(
                          children: [
                            Row(
                              children: [
                                Radio(
                                  value: "COD",
                                  groupValue: paymentMethod,
                                  onChanged: (value) {
                                    setState(() {
                                      paymentMethod = value!;
                                    });
                                  },
                                ),
                                Text("COD"),
                              ],
                            ),
                            Row(
                              children: [
                                Radio(
                                  value: "QR",
                                  groupValue: paymentMethod,
                                  onChanged: (value) {
                                    setState(() {
                                      paymentMethod = value!;
                                    });
                                  },
                                ),
                                Text("QR"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 30),
                    InkWell(
                      onTap: () {
                        // Tambahkan logika untuk menangani pembayaran sesuai metode yang dipilih (COD atau QR)
                        if (paymentMethod == "COD") {
                          // Logika pembayaran COD
                        } else if (paymentMethod == "QR") {
                          // Logika pembayaran QR
                        }
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 100),
                        decoration: BoxDecoration(
                          color: Color(0xFF4CC18C),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Text(
                          "Bayar sekarang",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 1,
                            color: Colors.white,
                          ),
                        ),
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
