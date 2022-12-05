import 'package:flutter/material.dart';

class NavBarDrawer extends StatelessWidget {
  const NavBarDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              child:
              Image.asset(
                "assets/images/logo.png",
                width: 100,
                height: 50,
              ),
          ),
          ListTile(
            leading: Icon(
              Icons.arrow_forward_ios,
            ),
            title: const Text("HAKKIMIZDA"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.arrow_forward_ios,
            ),
            title: const Text('ÜRÜNLER'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.arrow_forward_ios,
            ),
            title: const Text('KAYNAKLAR'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.arrow_forward_ios,
            ),
            title: const Text('HABERLER'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.arrow_forward_ios,
            ),
            title: const Text('İLETİŞİM'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
