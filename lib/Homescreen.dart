import 'package:flutter/material.dart';
import 'package:sahara_homepage/Donationscreens.dart';
import 'functions.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Container(
          height: 350,
          child: Stack(children: [
            /* Image.asset(
              'assets/images/background image.jpeg',
              fit: BoxFit.fill,
              height: 400,
              width: double.infinity,
            ),*/
            Image.network(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnN1YYQEf27aqIgiJSDWhpgQYHV9JJPkRxdA&s',
              height: 350,
              width: 400,
              fit: BoxFit.fill,
            ),
            Column(
              children: [
                SizedBox(
                  height: 120,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '\n           \n                  𝘾𝙝𝙖𝙧𝙞𝙩𝙮𝙈𝙖𝙩𝙚',
                      style: TextStyle(
                        // fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 26,
                      ),
                    ),
                  ],
                ),
                /*  Text(
                  '  A step to allivate poverty',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),*/
              ],
            )
          ])),
      SizedBox(
        height: 5,
      ),
      /*  Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 5),
        child: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.teal,
          ),
             child: Row(
            children: [
              Spacer(),
              Text(
                'Home',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Spacer(),
            ],
          ),
         ), ),*/

      Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade300,
            borderRadius: BorderRadius.vertical(
                top: Radius.circular(30), bottom: Radius.circular(2))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 10,
            ),
            Text(
              '      Categories:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 6,
            ),
            Row(children: [
              Spacer(),
              functions.container(Icons.fastfood, Colors.teal, ' Food', () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => donateitemscreen()));
              }),
              Spacer(),
              functions.container(
                  Icons.monetization_on_outlined, Colors.teal, ' Money', () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => donatemoneyscreen()));
              }),
              Spacer(),
              functions.container(
                  Icons.cyclone_outlined, Colors.teal, 'Clothing', () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => donateclothscreen()));
              }),
              Spacer(),
            ]),
            SizedBox(
              height: 10,
            ),
            Row(children: [
              Spacer(),
              functions.container(
                  Icons.menu_book_rounded, Colors.teal, ' Education', () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => donatestationaryscreen()));
              }),
              Spacer(),
              functions.container(
                  Icons.medical_information_outlined, Colors.teal, 'Medical',
                  () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => donatemedicalitems()));
              }),
              Spacer(),
              functions.container(Icons.devices_other, Colors.teal, 'Other',
                  () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => otherdonation()));
              }),
              Spacer(),
            ]),
            SizedBox(
              height: 15,
            ),
          ],
        ),
      )
    ])));
  }
}
