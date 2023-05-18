import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lms/dashboard/dashboard.dart';
import 'package:lms/main.dart';

class DrawerWidget extends StatefulWidget {
  const DrawerWidget({Key? key}) : super(key: key);

  @override
  State<DrawerWidget> createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blue.shade900,
      width: 300,
      elevation: 20.0,
      child: ListView(
        children: [
          const DrawerHeader(
            child: Icon(
              Icons.supervised_user_circle,
              size: 100,
            ),
          ),
          ListTile(
            leading: Icon(Icons.home_outlined),
            title: const Text(
              'HOME',
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const MyApp(),
                ),
              );
            },
          ),
          Container(
            margin: EdgeInsets.only(top: 300),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  thickness: 1,
                  color: Colors.black54,
                  endIndent: 2,
                ),
                GestureDetector(
                  onTap: () {
                    FirebaseAuth.instance.signOut();
                  },
                  child: ListTile(
                    leading: Icon(Icons.login_outlined),
                    title: Text(
                      'Logout',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Divider(),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: ListTile(
                    leading: Icon(
                      Icons.abc_outlined,
                      size: 50,
                    ),
                    title: Text(
                      "Logo",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
    ;
  }
}
