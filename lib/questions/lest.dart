// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:task_3/components/catogry.dart';
import 'package:task_3/questions/iq.dart';

class List extends StatelessWidget {
  const List({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 51, 59, 65),
      appBar: AppBar(
        elevation: 10,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.account_circle,color: Colors.white,
              size: 35,
            ),
          )
        ],
        title: Padding(
          padding: const EdgeInsets.only(bottom: 15.0),
          child: Text(
            "Quiz app",
            style:
                TextStyle(fontFamily: 'elsayed1', fontWeight: FontWeight.w500,color: Colors.white),
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Color.fromARGB(255, 51, 59, 65),
      ),
      body: SingleChildScrollView(
        child: Expanded(
            child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>IQ()));
                      },
                      child: QList(
                        name: "IQ Quiz",
                        color: Color.fromARGB(255, 44, 45, 50),
                      )),
                  QList(
                    name: "Sport Quiz",
                    color: Color.fromARGB(255, 41, 47, 42),
                  ),
                  QList(
                    name: "History",
                    color: Color.fromARGB(255, 56, 68, 73),
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
