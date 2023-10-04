import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Colors.blue.shade400,
                  Colors.blue.shade800,
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
          SafeArea(
              child: Container(
            width: 200,
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                DrawerHeader(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 50,
                        child: Image.asset('images/1.jpg'),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Jovi Daniel',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                        ),
                      ),
                      Expanded(
                        child: ListView(
                          children: const [
                            ListTile(
                              leading: Icon(
                                Icons.home,
                                color: Colors.white,
                              ),
                              title: Text(
                                'Home',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.person,
                                color: Colors.white,
                              ),
                              title: Text(
                                'Profile',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.settings,
                                color: Colors.white,
                              ),
                              title: Text(
                                'Settings',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                            ListTile(
                              leading: Icon(
                                Icons.logout,
                                color: Colors.white,
                              ),
                              title: Text(
                                'Log out',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
