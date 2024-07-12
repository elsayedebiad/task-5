// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, avoid_unnecessary_containers
import 'package:flutter/material.dart';
import 'package:task_3/questions/lest.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}


class _LoginState extends State<Login> {
  GlobalKey<FormState> _formKey = GlobalKey();

  bool? isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 49, 53, 49),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 49, 53, 49),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 160,
              margin: EdgeInsets.only(bottom: 80, top: 35),
              // child: Image.asset("assets/photos/alien.png"),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.all(10),
              height: MediaQuery.sizeOf(context).height * 0.70,
              decoration: BoxDecoration(
                color: Color(0xffEFECEC),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(top: 50),
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 25, fontFamily: 'elsayed2'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(25),
                    child: TextFormField(
                      key: _formKey,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter  user name ';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(50)),
                          hintText: "User name",
                          prefixIcon: Icon(Icons.person)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 25, right: 25),
                    child: TextFormField(
                      // key: _formKey,
                      // validator: (value) {
                      //   if (value!.isEmpty) {
                      //     return 'Please enter your password ';
                      //   }
                      //   return null;
                      // },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)),
                        hintText: "Password",
                        prefixIcon: Icon(Icons.lock),
                        suffixIcon: Container(
                            margin: EdgeInsets.only(left: 20),
                            padding: EdgeInsets.all(12),
                            child: Image.asset(
                              "assets/photos/eye-crossed.png",
                              width: 23,
                            )),
                        suffixIconColor: Color(0xff8C8C8C),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 180),
                    child: Row(
                      children: [
                        Text(
                          "New to quiz app ? ",
                          style: TextStyle(fontFamily: 'elsayed2'),
                        ),
                        Text(
                          " Register",
                          style: TextStyle(color: Colors.green),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 170,
                    height: 35,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          print("Valid");
                        } else {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => List()));
                        }
                      },
                      child: Text(
                        "Login",
                        style: TextStyle(
                            fontFamily: 'elsayed2', color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          shadowColor: Colors.black,
                          elevation: 15),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Image.asset(
                      "assets/photos/fingerprint.png",
                      width: 50,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Use Touch ID",
                    style: TextStyle(fontFamily: 'elsayed2'),
                  ),
                  SizedBox(
                    height: 90,
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: isChecked,
                        activeColor: Colors.green,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value;
                          });
                        },
                      ),
                      Text(
                        "Remember me",
                        style: TextStyle(fontFamily: 'elsayed2'),
                      ),
                      SizedBox(
                        width: 100,
                      ),
                      Text(
                        "Forget Password?",
                        style: TextStyle(color: Colors.green),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
