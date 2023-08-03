import 'package:flutter/material.dart';
import 'package:stockx/homepage.dart';

import 'auth/authmain.dart';
import 'auth/signup.dart';
import 'constant/navbar.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

 @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
    
     
      home: const BottomBar (),
      routes:{
         '/homepage':(context) => const HomePage(),
         '/profile': (context) => const ProfileScreen(),
      }
    );
  }
}

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int pageIndex = 0;

  final pages = [
    const HomePage(),
    const Page2(),
    const Page3(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: pageIndex != 0 
          ? AppBar(
              elevation: 2.0,
              leading: Icon(
                Icons.help_outline,
                color: Colors.black87,
                size: 25,
              ),
              title: Text(
                'Account',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              centerTitle: true,
              backgroundColor: Colors.white,
            )
          : null, 
      body: pages[pageIndex],
      bottomNavigationBar: NavBar(
        pageIndex: pageIndex,
        onPageChanged: (index) {
          setState(() {
            pageIndex = index;
          });
        },
      ),
    );
  }
}


class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
   return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 2",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 3",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

