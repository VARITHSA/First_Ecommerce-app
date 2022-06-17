// ignore_for_file: prefer_const_declarations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intro/pages/home_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final  image1 =
        "https://wallpaperaccess.com/full/8026102.jpg";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children:  [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                    accountName: const Text(
                      "srivathsa",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                    accountEmail: const Text(
                      "bssrivathsa0809@gmail.com",
                      style: TextStyle(
                      color : Colors.white,
                    ),
                    ),
                    margin: EdgeInsets.zero,
                    decoration: const  BoxDecoration(
                      color: Colors.deepPurple
                    ),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(image1),
                    
                    ),
                   ),
                ),
                  ListTile(
                  leading:const Icon(CupertinoIcons.home,
                  color: Colors.white,
                  ),onTap: () {
                    Navigator.pushNamed(context, HomePage.routeName);
                  },
                  title: const Text(
                    "Home",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const ListTile(
                  leading:Icon(CupertinoIcons.profile_circled,color: Colors.white,),

                  title: Text(
                    "Profile",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                const ListTile(
                  leading:Icon(CupertinoIcons.mail,color: Colors.white,),
                  title: Text(
                    "Contact me",
                    textScaleFactor: 1.2,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
