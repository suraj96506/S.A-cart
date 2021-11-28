import 'package:flutter/material.dart';

import 'main.dart';

class cartOptions extends StatefulWidget {
  cartOptions({Key? key}) : super(key: key);

  @override
  _cartOptionsState createState() => _cartOptionsState();
}

class _cartOptionsState extends State<cartOptions> {
  List<dynamic> productList = [];
  List<String> size = [
    "S",
    "M",
    "L",
    "XL",
  ];

  List<Color> colors = [
    Colors.black,
    Colors.purple,
    Colors.orange.shade200,
    Colors.blueGrey,
    Color(0xFFFFC1D9),
  ];

  int _selectedColor = 0;
  int _selectedSize = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.42,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: EdgeInsets.only(left: 15, top: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Colors",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 19,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: colors.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedColor = index;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 300),
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: _selectedColor == index
                              ? colors[index]
                              : colors[index].withOpacity(0.5),
                          shape: BoxShape.circle),
                      width: 40,
                      height: 40,
                      child: Center(
                        child: _selectedColor == index
                            ? Icon(
                                Icons.check,
                                color: Colors.white,
                              )
                            : Container(),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Size',
              style: TextStyle(color: Colors.grey.shade400, fontSize: 18),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: size.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _selectedSize = index;
                      });
                    },
                    child: AnimatedContainer(
                      duration: Duration(milliseconds: 500),
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: _selectedSize == index
                              ? Colors.yellow[800]
                              : Colors.grey.shade200,
                          shape: BoxShape.circle),
                      width: 40,
                      height: 40,
                      child: Center(
                        child: Text(
                          size[index],
                          style: TextStyle(
                              color: _selectedSize == index
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: 15),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 40,
                width: double.infinity,
                margin: EdgeInsets.only(right: 20),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => MyApp()));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)),
                        primary: Colors.orange.shade600),
                    child: Text(
                      "Add to Cart",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
