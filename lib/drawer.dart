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
  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blue.shade900,
      width: 300,
      elevation: 20.0,
      child: ListView(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.only(left: 20),
            child: Column(
              children: [
                const Icon(
                  Icons.supervised_user_circle,
                  size: 100,
                ),
                Text(
                  'Logged in as ${user.email!}',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ]
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.home_outlined,
              size: 35,
              color: Colors.white,
            ),
            title: const Text(
              'HOME',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
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
            margin: const EdgeInsets.only(top: 300),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Divider(
                  thickness: 1,
                  color: Colors.black54,
                  endIndent: 2,
                  height: 80,
                ),
                const SizedBox(
                  height: 40,
                ),
                GestureDetector(
                  onTap: () {
                    FirebaseAuth.instance.signOut();
                  },
                  child: const ListTile(
                    leading: Icon(
                      Icons.login_outlined,
                      size: 30,
                      color: Colors.white,
                    ),
                    title: Text(
                      'Logout',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const Divider(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const ListTile(
                    leading: Image(
                      image: AssetImage('assets/playstore.png'),
                      width: 40,
                    ),
                    title: Text(
                      "LMS",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
