import 'package:app/Search.dart';
import 'package:app/cart.dart';
import 'package:app/main.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Text(
          "profile",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: Container(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.white,
            Colors.orange.withOpacity(0.4),
            Colors.white
          ])),
          child: Center(
              child: Text(
            "Still Working on it...",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          )),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              splashColor: Colors.grey.shade300,
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 500),
                        transitionsBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secAnimation,
                            Widget child) {
                          CurvedAnimation(
                              parent: animation, curve: Curves.easeInCubic);

                          return ScaleTransition(
                            scale: animation,
                            alignment: Alignment.center,
                            child: child,
                          );
                        },
                        pageBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secAnimation) {
                          return MyApp();
                        }));
              },
              iconSize: 25,
              icon: Icon(Icons.home_outlined),
              color: Colors.grey,
            ),
            IconButton(
              splashColor: Colors.grey.shade300,
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 500),
                        transitionsBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secAnimation,
                            Widget child) {
                          CurvedAnimation(
                              parent: animation, curve: Curves.easeInCubic);

                          return ScaleTransition(
                            scale: animation,
                            alignment: Alignment.center,
                            child: child,
                          );
                        },
                        pageBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secAnimation) {
                          return Search();
                        }));
              },
              iconSize: 25,
              icon: Icon(Icons.search),
              color: Colors.grey,
            ),
            IconButton(
              splashColor: Colors.grey.shade300,
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 500),
                        transitionsBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secAnimation,
                            Widget child) {
                          CurvedAnimation(
                              parent: animation, curve: Curves.easeInCubic);

                          return ScaleTransition(
                            scale: animation,
                            alignment: Alignment.center,
                            child: child,
                          );
                        },
                        pageBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secAnimation) {
                          return Cart();
                        }));
              },
              iconSize: 25,
              icon: Icon(Icons.shopping_bag),
              color: Colors.grey,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Profile",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                )),
          ],
        ),
      ),
    );
  }
}
