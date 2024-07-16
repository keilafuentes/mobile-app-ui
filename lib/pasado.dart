import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

/// Flutter code sample for [AppBar].

void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AppBarExample(),
    );
  }
}

class AppBarExample extends StatelessWidget {
  const AppBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          children: [
            Container(
              height: 45,
              width: 45,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1438761681033-6461ffad8d80?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"))),
            ),
            const SizedBox(
              width: 12,
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Melody Fuentes',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Investor",
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
        backgroundColor: Colors.white,
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            tooltip: 'Show Snackbar',
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Container(
          width: 100,
          height: 100,
          color: Colors.grey,
          child: const Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(
                top: 4,
                bottom: -100,
                left: 5,
                child: CircleAvatar(),
              ),
              Positioned(
                top: 5,
                bottom: -100,
                left: 30,
                child: CircleAvatar(
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
        ),

        /* const Padding(
        padding: EdgeInsets.all(24.0),

        child: Container(
          color: Colors.black,
          //height: 200.0,
          width: double.infinity,
          child: const Padding(
            padding: EdgeInsets.all(24.0),
            child: Wrap(
              children: [
                Text(("Tools you "),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                Text(("need to put"),
                    style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                Text(("your money  in motion."),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20)),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Stack(
                      //alignment: Alignment.centerLeft,
                      children: [
                        CircleAvatar(),
                      ],

                      //aqui va el tema de los circles uno ariba de de otro
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(("5k+ community"),
                        style: TextStyle(color: Colors.white, fontSize: 15)),
                    SizedBox(
                      height: 12,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ), */
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white, // <-- This works for fixed
        selectedItemColor: Colors.grey,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.white,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business_center),
            label: 'Business',
            //backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
            //backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            //backgroundColor: Colors.pink,
          ),
        ],
      ),
    );
  }
}
