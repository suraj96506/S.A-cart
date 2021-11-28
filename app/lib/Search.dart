import 'package:app/cart.dart';
import 'package:app/main.dart';
import 'package:app/profile.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.white,
          Colors.orange.withOpacity(0.4),
          Colors.white
        ])),
        child: Column(
          children: [
            SafeArea(
              top: true,
              child: Container(
                margin: EdgeInsets.all(20),
                child: TextFormField(
                  cursorColor: Colors.black,
                  // keyboardType: TextInputType.,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(fontSize: 17),
                    hintText: 'Search e.g sweatshirts',
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(18),
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 8),
              height: MediaQuery.of(context).size.height * 0.45,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/search.png",
                      ),
                      scale: 2)),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "  Type to Search.....",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            )
          ],
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
            TextButton(
                onPressed: () {},
                child: Text(
                  "Search",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                )),
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
                          return Profile();
                        }));
              },
              iconSize: 25,
              icon: Icon(Icons.account_circle),
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
