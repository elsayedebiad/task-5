// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/material.dart';

import 'login.dart';
class Home extends StatelessWidget {
const  Home({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/photos/background.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 220,
                ),
                Image(
                  image: AssetImage("assets/photos/home_page.png"),
                  width: 160,
                ),
                Text(
                  "ITI Quiz app",
                  style: TextStyle(
                      color: Color(0xffFFEB3B),
                      fontSize: 25,
                      fontFamily: 'elsayed1'),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "We Are Creative enjoy our App",
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'elsayed1',
                      fontSize: 18),
                ),
                Spacer(),
                Container(
                    height: 35,
                    margin: EdgeInsets.all(25),
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text(
                        "Start",
                        style: TextStyle(
                            color: Colors.white, fontFamily: 'elsayed2'),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7))),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
