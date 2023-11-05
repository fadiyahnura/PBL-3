import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viewapp/widgets/product_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
// ignore: unused_import
import 'package:viewapp/screens/belanja_screen.dart';
import 'package:viewapp/screens/profil_screen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> catList = ["ALL", "Makanan", "Minuman", "Barang"];
  List<String> imgList = ["jajan1", "drink", "buku"];

  final List<String> imageSliderList = [
    "images/gambar2.png",
    "images/snack.png",
    "images/drink1.png",
    "images/barang.png",

    // Tambahkan gambar-gambar slider lain di sini
  ];

  int _currentImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Find Your Product",
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            size: 30,
                            color: Colors.grey,
                          ),
                        ),
                        onChanged: (text) {
                          // Logika untuk menghandle perubahan teks pencarian
                          print("Pencarian: $text");
                          // Anda dapat menggantikan perintah print dengan logika pencarian sesuai kebutuhan aplikasi Anda.
                        },
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Icon(
                        Icons.notifications_none,
                        size: 30,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                CarouselSlider(
                  items: imageSliderList.map((image) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(40),
                      child: Image.asset(
                        image,
                        width: MediaQuery.of(context).size.width / 1.2,
                        fit: BoxFit.contain,
                      ),
                    );
                  }).toList(),
                  options: CarouselOptions(
                    height: 200, // Atur tinggi carousel sesuai kebutuhan Anda
                    autoPlay: true,
                    enlargeCenterPage: true,
                    aspectRatio: 16 / 9,
                    onPageChanged: (index, reason) {
                      setState(() {
                        _currentImageIndex = index;
                      });
                    },
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: imageSliderList.map((image) {
                    int index = imageSliderList.indexOf(image);
                    return Container(
                      width: 8.0,
                      height: 8.0,
                      margin:
                          EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _currentImageIndex == index
                            ? Color(0xFF4CC18C)
                            : Colors.grey,
                      ),
                    );
                  }).toList(),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Row(
                      children: [
                        for (int i = 0; i < catList.length; i++)
                          Container(
                            margin: EdgeInsets.all(8),
                            padding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 18),
                            decoration: BoxDecoration(
                              color: catList[i] == "ALL"
                                  ? Color(0xFF4CC18C)
                                  : Color(0xFFECEDF0),
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Text(
                              catList[i],
                              style: TextStyle(
                                fontSize: 16,
                                color: catList[i] == "ALL"
                                    ? Colors.white
                                    : Color(0xFFA09C9C),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio:
                        (MediaQuery.of(context).size.width - 30 - 15) /
                            (2 * 290),
                    mainAxisSpacing: 45,
                    crossAxisSpacing: 15,
                  ),
                  itemCount: imgList.length,
                  itemBuilder: (_, i) {
                    if (i % 2 == 0) {
                      return ProductCard(imgList[i]);
                    }
                    return OverflowBox(
                      maxHeight: 290.0 + 70.0,
                      child: Container(
                        margin: EdgeInsets.only(top: 70),
                        child: ProductCard(imgList[i]),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(232, 228, 225, 225),
        iconSize: 30,
        selectedItemColor: Color(0xFF4CC18C),
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        onTap: (index) {
          if (index == 1) {
            // Pindah ke halaman belanja_screen.dart
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => BelanjaScreen()));
          } else if (index == 2) {
            // Pindah ke halaman profil_screen.dart
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => ProfilScreen()));
          }
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cart_fill), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }
}
