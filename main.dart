import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Giao dien 2',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 110,
          backgroundColor: Colors.green,
          title: Text(
            'Sign in',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          centerTitle: true,
        ),
        backgroundColor: Colors.white,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(157, 216, 214, 214),
                    border: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(30))),
                    labelText: 'Username',
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color.fromARGB(157, 216, 214, 214),
                    border: OutlineInputBorder(
                        borderRadius:
                            const BorderRadius.all(const Radius.circular(30))),
                    labelText: 'Password',
                  ),
                  obscureText: true,
                  obscuringCharacter: "*",
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 110, top: 20, bottom: 20),
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(text: "Forgot "),
                  TextSpan(
                      text: "Username/Password?",
                      style: TextStyle(color: Colors.green))
                ])),
              ),
              Container(
                height: 55,
                width: 330,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30)),
                child: Center(
                    child: Text(
                  "SIGN IN",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.white),
                )),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                color: Colors.white,
                height: 250,
                width: 430,
                alignment: Alignment.bottomCenter,
                child: Text(
                  "Don't have an account?",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Container(
                color: Colors.white,
                height: 15,
                width: 430,
                alignment: Alignment.bottomCenter,
                child: Text(
                  "SIGN IN NOW",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      fontSize: 15),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
