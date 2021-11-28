import 'package:app/main.dart';
import 'package:flutter/material.dart';

class PAy extends StatelessWidget {
  const PAy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 70),
              height: MediaQuery.of(context).size.height * 0.40,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      scale: 8,
                      image: AssetImage(
                        "assets/shoppings.png",
                      ))),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              child: Column(
                children: [
                  Text(
                    "Payment Success!",
                    style: TextStyle(
                        color: Colors.black,
                        fontStyle: FontStyle.normal,
                        fontSize: 25,
                        fontWeight: FontWeight.w800),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 80, right: 50, top: 20),
                    child: Text(
                      "Hooray! Your payment process has been compleated successfully",
                      maxLines: 2,
                      style: TextStyle(
                          color: Colors.grey,
                          fontStyle: FontStyle.normal,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 80),
              width: MediaQuery.of(context).size.width * 0.80,
              height: MediaQuery.of(context).size.width * 0.10,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyApp()));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      primary: Colors.orange.shade600),
                  child: Text(
                    "Back to Home",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w500),
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
              child: Text("Thank you for shopping with us",
                  style: TextStyle(
                      color: Colors.grey,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      fontWeight: FontWeight.w600)),
            )
          ],
        ),
      ),
    );
  }
}
