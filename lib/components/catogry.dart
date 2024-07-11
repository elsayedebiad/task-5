import 'package:flutter/material.dart';

class QList extends StatelessWidget {
  const QList({super.key,required this.name, required this.color});

  final String name ;
  final Color color;




  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20, left: 20, right: 20),
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              padding: EdgeInsets.all(25),
              child: Text(
              name,
                style: TextStyle(
                    color: Color.fromARGB(255, 216, 212, 212),
                    fontFamily: 'elsayed2',
                    fontSize: 23),
              )),
        
          
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Image.asset(
              "assets/photos/angle-right.png",
              width: 22,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
