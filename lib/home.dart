import 'package:ecommer/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:ecommer/navbar.dart';
import 'data.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Toko Roti ',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          backgroundColor: Colors.amber,
        ),
        endDrawer: NavDrawer(),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemCount: datashop.length,
              itemBuilder: (BuildContext context, index) {
                Datashop shop = datashop[index];
                return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  elevation: 1,
                  child: Column(
                    children: [
                      SizedBox(
                        width: 150,
                        child: Image.asset(
                          "assets/roti2.jpg",
                          fit: BoxFit.cover,
                        ),
                      ),
                      Divider(
                        height: 2,
                        thickness: 1,
                        color: Colors.grey[800],
                      ),
                      Text(shop.price),
                      Text(shop.productName),
                      Text(shop.stock),
                    ],
                  ),
                );
              }),
        ));
  }
}
