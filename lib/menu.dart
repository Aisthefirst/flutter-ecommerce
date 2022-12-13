import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

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
      body: ListView(
        children: [
          ListTile(
            contentPadding: EdgeInsets.all(10),
            title: Text(
              "Croissant",
              maxLines: 2,
            ),
            subtitle: Text(
                "Sebuah Croissant yang penuh akan cita rasa, resep rahasia menghasilkan perpaduan kerenyahan dan kelembutan di setiap gigitannya."),
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFsK6RlRLoTW9NI8gz2Y-E5rhY_81vgD2lunObQ5q9yxQeVnHInLVLdYfKxvXW7JmYjGo&usqp=CAU'),
                ),
              ),
            ),
            trailing: Text("Best seller"),
          ),
          // Divider(
          //   height: 2,
          //   thickness: 1,
          //   color: Colors.grey[800],
          // ),

          ListTile(
            contentPadding: EdgeInsets.all(10),
            title: Text(
              "Puff Pastry",
              maxLines: 2,
            ),
            subtitle: Text(
                "Pastry lembut dan renyah, perpaduan gurih dan manis yang pas menjadikan menu sarapan yang nikmat"),
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://www.quipper.com/id/blog/wp-content/uploads/2022/02/puff-pastry.webp'),
                ),
              ),
            ),
            trailing: Text("Best seller"),
          ),
          //
          ListTile(
            contentPadding: EdgeInsets.all(10),
            title: Text(
              "Garlic Bread",
              maxLines: 2,
            ),
            subtitle: Text(
                "Garlic bread bisa menjadi teman nugas kamu, gurihnya mampu membuat moodmu bagus untuk menugas :)"),
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRr74TxZaBplXkmaBJbYhupL2wQJEIN1ZPqF-jQ_fSFJr8qpAJhZMUP_-6_C5lTqAgFJlw&usqp=CAU'),
                ),
              ),
            ),
            trailing: Text("Best seller"),
          ),
          //
          ListTile(
            contentPadding: EdgeInsets.all(10),
            title: Text(
              "Pizza CheeseMonsters",
              maxLines: 2,
            ),
            subtitle: Text(
                "Menu yang satu ini memang tidak ada lawan, kelezatan di setiap gigitannya membuat tongkronganmu menjadi lebih hangat"),
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTl5cSF0h4UZelIVf3_M6k8SyupSvwdltGoag&usqp=CAU'),
                ),
              ),
            ),
            trailing: Text("Best seller"),
          ),
          //
          ListTile(
            contentPadding: EdgeInsets.all(10),
            title: Text(
              "Muffin",
              maxLines: 2,
            ),
            subtitle: Text(
                "Si kecil manis ini mungkin terlihat kecil, namun ia mampu membuatmu goodmood :)"),
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://images.tokopedia.net/img/cache/500-square/VqbcmM/2021/7/15/c8ab43fb-b4dc-4878-a4c8-c017d1861c03.jpg'),
                ),
              ),
            ),
            // trailing: Text("Best seller"),
          ),
          //
          ListTile(
            contentPadding: EdgeInsets.all(10),
            title: Text(
              "Blueberry Cheesecake",
              maxLines: 2,
            ),
            subtitle: Text(
                "Rasakan suasana manis dalam setiap gigitannya, Blueberry Cheesecake mungkin menjadi opsi pilihan kamu untuk memperbaiki suasana hati yang kacau "),
            leading: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://hips.hearstapps.com/vidthumb/images/delish-blueberry-cheesecake-still003-1557335639.jpg?crop=0.768xw:0.684xh;0.131xw,0.103xh&resize=1200:*'),
                ),
              ),
            ),
            // trailing: Text("Best seller"),
          ),
        ],
      ),
    );
  }
}
