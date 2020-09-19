import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SplashScreen(),
    theme: ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
  ));
}

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _logoopacity = 1.0;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2), () {
      _logoopacity = 0;
      setState(() {});
    });
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return LogInSignUpPage();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      body: Center(
        child: AnimatedOpacity(
          opacity: _logoopacity,
          duration: Duration(milliseconds: 500),
          child: Icon(
            Icons.monetization_on,
            size: 200,
            color: Colors.lightBlue[100],
          ),
        ),
      ),
    );
  }
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
              child: Hero(
                tag: 'accounticon',
                child: Icon(
                  Icons.account_circle,
                  color: Colors.lightBlue[100],
                  size: 250,
                ),
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
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return SignupPage();
                              }));
                            },
                            heroTag: 'signupbtn',
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
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return LoginPage();
                              }));
                            },
                            heroTag: 'loginbtn',
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

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _emailreadonly = true;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 400), () {
      _emailreadonly = false;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.45,
              child: Center(
                child: Hero(
                  tag: 'accounticon',
                  child: Icon(
                    Icons.account_circle,
                    color: Colors.lightBlue[100],
                    size: 250,
                  ),
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
                      Container(
                        height: 40,
                        width: 250,
                        child: TextField(
                          cursorColor: Colors.lightBlue[900],
                          style: TextStyle(
                            color: Colors.lightBlue[900],
                          ),
                          readOnly: _emailreadonly,
                          autofocus: true,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.bottom,
                          decoration: InputDecoration(
                            hintText: "Registered Email",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.lightBlue[900],
                                width: 2,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 40,
                        width: 250,
                        child: TextField(
                          cursorColor: Colors.lightBlue[900],
                          style: TextStyle(
                            color: Colors.lightBlue[900],
                          ),
                          obscureText: true,
                          autofocus: true,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.bottom,
                          decoration: InputDecoration(
                            hintText: "Password",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.lightBlue[900],
                                width: 2,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        width: 250,
                        child: Center(
                          child: Visibility(
                            visible: false,
                            child: Text(
                              "Ivalid email or password",
                              style: TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 40,
                        width: 200,
                        child: FloatingActionButton.extended(
                          onPressed: () {},
                          heroTag: 'loginbtn',
                          elevation: 15,
                          backgroundColor: Colors.lightBlue[900],
                          label: Text("Log In"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  bool _emailreadonly = true;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 400), () {
      _emailreadonly = false;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue[900],
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.45,
              child: Center(
                child: Hero(
                  tag: 'accounticon',
                  child: Icon(
                    Icons.account_circle,
                    color: Colors.lightBlue[100],
                    size: 250,
                  ),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.55,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(35, 50, 35, 100),
                child: Card(
                  elevation: 40,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  color: Colors.white.withOpacity(0.7),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 40,
                        width: 250,
                        child: TextField(
                          cursorColor: Colors.lightBlue[900],
                          style: TextStyle(
                            color: Colors.lightBlue[900],
                          ),
                          readOnly: _emailreadonly,
                          autofocus: true,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.bottom,
                          decoration: InputDecoration(
                            hintText: "Email ID",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.lightBlue[900],
                                width: 2,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 40,
                        width: 250,
                        child: TextField(
                          cursorColor: Colors.lightBlue[900],
                          style: TextStyle(
                            color: Colors.lightBlue[900],
                          ),
                          autofocus: true,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.bottom,
                          decoration: InputDecoration(
                            hintText: "Username",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.lightBlue[900],
                                width: 2,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 40,
                        width: 250,
                        child: TextField(
                          cursorColor: Colors.lightBlue[900],
                          style: TextStyle(
                            color: Colors.lightBlue[900],
                          ),
                          obscureText: true,
                          autofocus: true,
                          textAlign: TextAlign.center,
                          textAlignVertical: TextAlignVertical.bottom,
                          decoration: InputDecoration(
                            hintText: "Password",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                color: Colors.lightBlue[900],
                                width: 2,
                              ),
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Container(
                        height: 40,
                        width: 200,
                        child: FloatingActionButton.extended(
                          onPressed: () {},
                          heroTag: 'signupbtn',
                          elevation: 15,
                          backgroundColor: Colors.lightBlue[900],
                          label: Text("Sign Up"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
