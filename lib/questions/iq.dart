import 'package:flutter/material.dart';

class IQ extends StatelessWidget {
  const IQ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Text(
          "IQ Quiz",
          style: TextStyle(color: Colors.white, fontFamily: 'elsayed2'),
        ),
        backgroundColor: Color.fromARGB(255, 62, 84, 63),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromARGB(255, 102, 155, 104),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 290,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 54, 64, 55),
                  borderRadius: BorderRadius.circular(12)),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "1 - What is the difference between a StatelessWidget and a StatefulWidget ? ",
                      style: TextStyle(color: Colors.white),
                    ),
                    SizedBox(height: 10,),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                              "a. StatelessWidget is used for displaying static"),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25))),
                      ),
                    ),

                    Container(
                      margin: EdgeInsets.all(5),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                              "b. StatelessWidget is used for displaying static"),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25))),
                    )),

                    Container(
                      margin: EdgeInsets.all(5),
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Text(
                              "c. StatelessWidget is used for displaying static"),
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25))),
                    )),

                    
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
