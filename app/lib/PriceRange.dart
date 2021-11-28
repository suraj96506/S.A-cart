import 'package:flutter/material.dart';

class Prange extends StatefulWidget {
  @override
  _PrangeState createState() => _PrangeState();
}

class _PrangeState extends State<Prange> {
  RangeValues values = RangeValues(500, 50000);
  RangeLabels labels = RangeLabels(
    "500",
    "50000",
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, bottom: 15),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Price Range",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w800),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Text(
                  "\$ ${labels.start}",
                  style: TextStyle(
                      color: Colors.grey.shade700,
                      fontSize: 16,
                      fontWeight: FontWeight.w900),
                ),
              ),
              Text(
                "-",
                style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                    fontWeight: FontWeight.w900),
              ),
              Text(
                "\$ ${labels.end}",
                style: TextStyle(
                    color: Colors.grey.shade700,
                    fontSize: 16,
                    fontWeight: FontWeight.w900),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: RangeSlider(
              activeColor: Colors.orange.shade700,
              inactiveColor: Colors.grey,
              min: 500,
              max: 50000,
              values: values,
              labels: labels,
              divisions: 300,
              onChanged: (value) {
                print('Start:${values.start},END:${values.end}');
                setState(() {
                  values = value;
                  labels = RangeLabels(value.start.toInt().toString(),
                      value.end.toInt().toString());
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
