import 'package:ecommer/home.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:ecommer/home.dart';
import 'package:ecommer/navbar.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Tidar`s Patisseries'),
      ),
      endDrawer: NavDrawer(),
      body: ListView(
        children: [
          // Image(image: AssetImage('assets/rumaroti.jpg'), fit: BoxFit.cover),
          Image(
            image: NetworkImage(
                'https://dcassetcdn.com/design_img/2406116/503299/503299_12572140_2406116_c4e9c32a_image.jpg'),
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 10),
            child: Text(
              'Tidar`s Patisseries siap menyajikan kue lezat tak terlupakan untuk melengkapi momen spesial Anda. Dalam hal mutu Tidar`s Patisseries telah menyandang Penghargaan Piagam Bintang Satu Keamanan Pangan dari BADAN POM RI dengan nomor 101014.3507.159 dan telah bersertifikat halal dari MUI dengan nomor 55005301610014',
              style: const TextStyle(fontSize: 16),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 2, bottom: 4),
            child: Row(
              children: [
                // Text(
                //   'Rating',
                //   style: const TextStyle(fontSize: 18, color: Colors.orange),
                // ),
                // const Icon(
                //   Icons.star_rounded,
                //   color: Colors.orange,
                // ),
                // const Icon(
                //   Icons.star_rounded,
                //   color: Colors.orange,
                // ),
                // const Icon(
                //   Icons.star_rounded,
                //   color: Colors.orange,
                // ),
                // const Icon(
                //   Icons.star_rounded,
                //   color: Colors.orange,
                // ),
                // const Icon(
                //   Icons.star_rounded,
                //   color: Colors.orange,
                // ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, bottom: 15),
            child: Text(''),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 20, left: 10),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.orange,
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.map,
                        color: Colors.white,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        child: const Text(
                          "Maps",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(25, 10, 25, 10),
                  margin: const EdgeInsets.only(left: 10, right: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.white,
                      border: Border.all(
                        width: 1,
                        color: Colors.orange,
                      )),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.phone_android_outlined,
                        color: Colors.red,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        child: const Text(
                          "Order",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1,
                      color: Colors.orange,
                    ),
                    borderRadius: BorderRadius.circular(18),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.phone,
                        color: Colors.orange,
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 5),
                        child: const Text(
                          "Call",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Container(
          //   padding: const EdgeInsets.only(left: 10, right: 10),
          //   child: Column(
          //     children: [
          //       Text(
          //         'Etalase Produk klik disini',
          //         textAlign: TextAlign.justify,
          //         style: const TextStyle(fontSize: 15),
          //       ),
          //       IconButton(
          //         onPressed: () {
          //           Navigator.push(
          //               context,
          //               MaterialPageRoute(
          //                 builder: (context) => Home_Page(),
          //               ));
          //         },
          //         icon: Icon(Icons.shopping_cart_checkout_outlined),
          //       )
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
