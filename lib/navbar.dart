import 'package:ecommer/history.dart';
import 'package:ecommer/info.dart';
import 'package:ecommer/menu.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          InkWell(
              // onTap: () {
              //   Navigator.of(context).push(MaterialPageRoute(
              //       builder: (BuildContext context) => profile()));
              // },
              child: UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
            currentAccountPicture: ClipOval(
              child:
                  Image(image: AssetImage('assets/pp.jpg'), fit: BoxFit.cover),
            ),
            accountName: Text('Ahmad Azhar Darmawan'),
            accountEmail: Text('wicardinata@gmail.com'),
          )),
          _drawerItem(
              icon: Icons.person_outlined,
              text: 'Menu',
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Menu()));
              }),
          _drawerItem(
              icon: Icons.people_outlined,
              text: 'Riwayat Pembelian',
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => History()));
              }),
          _drawerItem(
              icon: Icons.people_outlined,
              text: 'Info',
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (BuildContext context) => Info()));
              }),

          // _drawerItem(
          //     icon: Icons.call_outlined,
          //     text: 'Panggilan',
          //     onTap: () {
          //       Navigator.of(context).pop();
          //       Navigator.of(context).push(MaterialPageRoute(
          //           builder: (BuildContext context) => panggil()));
          //     }),
          // _drawerItem(
          //     icon: Icons.bookmark_outline,
          //     text: 'Pesan Tersimpan',
          //     onTap: () => print('Tap Recent menu')),
          // _drawerItem(
          //     icon: Icons.settings_outlined,
          //     text: 'Pengaturan',
          //     onTap: () => print('Tap Trash menu')),
          // Divider(height: 25, thickness: 1),
          // _drawerItem(
          //     icon: Icons.person_add_outlined,
          //     text: 'Undang teman',
          //     onTap: () => print('Tap Family menu')),
          // _drawerItem(
          //     icon: Icons.question_mark_outlined,
          //     text: 'Fitur Lain',
          //     onTap: () => print('Tap Family menu')),
        ],
      ),
    );
  }
}
Widget _drawerItem(
    {required IconData icon,
    required String text,
    required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
