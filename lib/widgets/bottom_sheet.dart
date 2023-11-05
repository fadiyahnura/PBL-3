import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viewapp/screens/cart_screen.dart';

class CustomBottomSheet extends StatefulWidget {
  @override
  CustomBottomSheetState createState() => CustomBottomSheetState();
}

class CustomBottomSheetState extends State<CustomBottomSheet> {
  int itemCount = 1;
  String paymentMethod = "COD"; // Default payment method

  void incrementItem() {
    setState(() {
      itemCount++;
    });
  }

  void decrementItem() {
    if (itemCount > 1) {
      setState(() {
        itemCount--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 50),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 10),
          Container(
            height: 4,
            width: 50,
            decoration: BoxDecoration(
              color: const Color(0xFFFCF9F9),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Text(
                "Total:",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(width: 30),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xFFDACFD7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: decrementItem, // Mengurangi jumlah barang
                  child: Icon(
                    CupertinoIcons.minus,
                    size: 18,
                    color: Color(0xFF4CC18C),
                  ),
                ),
              ),
              SizedBox(width: 8),
              Text(
                itemCount.toString(), // Menampilkan jumlah barang
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(width: 8),
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Color(0xFFDACFD7),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: InkWell(
                  onTap: incrementItem, // Menambah jumlah barang
                  child: Icon(
                    CupertinoIcons.add,
                    size: 18,
                    color: Color(0xFF4CC18C),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Total Payment",
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
          SizedBox(height: 30),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CartScreen(),
                  ));
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 100),
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
          )
        ],
      ),
    );
  }
}
