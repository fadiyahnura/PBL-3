import 'package:flutter/material.dart';
import 'package:viewapp/screens/product_screen.dart';

// ignore: must_be_immutable
class ProductCard extends StatelessWidget {
  String img;
  ProductCard(this.img);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            color: Color.fromARGB(255, 159, 158, 160),
            child: Stack(
              children: [
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductScreen(img)));
                  },
                  child: Image.asset(
                    "images/${img}.png",
                    fit: BoxFit.cover,
                    height: 230,
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.only(left: 5),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  img,
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: Colors.black.withOpacity(0.7),
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "\Rp 10.000",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 4, 138, 15).withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
