import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: LogInSignUpPage(),
    theme: ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
  ));
}

class LogInSignUpPage extends StatefulWidget {
  @override
  _LogInSignUpPageState createState() => _LogInSignUpPageState();
}

class _LogInSignUpPageState extends State<LogInSignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.45,
            child: Center(
              child: Icon(
                Icons.account_circle,
                color: Colors.lightBlue[100],
                size: 250,
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.55,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 35, vertical: 100),
              child: Card(
                elevation: 40,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                color: Colors.white.withOpacity(0.7),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 120,
                          child: FloatingActionButton.extended(
                            onPressed: () {},
                            elevation: 15,
                            backgroundColor: Colors.lightBlue[900],
                            label: Text("Sign up"),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 40,
                          width: 120,
                          child: FloatingActionButton.extended(
                            onPressed: () {},
                            elevation: 15,
                            backgroundColor: Colors.lightBlue[900],
                            label: Text("Log In"),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 80,
                          child: Divider(
                            height: 40,
                            thickness: 1,
                            color: Colors.grey,
                          ),
                        ),
                        Text(
                          " or ",
                          style: TextStyle(
                            color: Colors.grey[700],
                          ),
                        ),
                        Container(
                          width: 80,
                          child: Divider(
                            height: 40,
                            thickness: 1,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 40,
                      width: 250,
                      child: FloatingActionButton.extended(
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                          side: BorderSide(
                            width: 3,
                            color: Color.fromRGBO(59, 89, 152, 1),
                          ),
                        ),
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        icon: Text(
                          "f",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(59, 89, 152, 1),
                          ),
                        ),
                        label: Text(
                          "Continue with Facebook",
                          style: TextStyle(
                            color: Color.fromRGBO(59, 89, 152, 1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
