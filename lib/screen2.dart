import 'package:flutter/material.dart';
import 'screen3.dart'; 

class LogIn extends StatelessWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF9F9F9),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 50),
              Center(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/logoBlue.png",
                          width: 122, height: 83),
                      Text(
                        "REPAIR HOME",
                        style: TextStyle(
                          fontSize: 32,
                          color: Color(0xFF1F319D),
                          fontFamily: 'Gobold',
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30.0, bottom: 14, top: 35),
                child: Text(
                  "Login to your account",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Center(
                child: Container(
                  width: 300,
                  height: 63,
                  child: TextField(
                    style: TextStyle(fontSize: 22),
                    decoration: const InputDecoration(
                      hintText: "Email",
                      border: OutlineInputBorder(
                        gapPadding: 2,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Container(
                  width: 300,
                  height: 63,
                  child: TextField(
                    style: TextStyle(fontSize: 22),
                    decoration: const InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(
                          gapPadding: 2,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Sign in",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  style: ButtonStyle(
                      shadowColor: MaterialStateProperty.all(
                          Theme.of(context).colorScheme.onSurface),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.only(
                            left: 120, top: 25, right: 120, bottom: 19),
                      ),
                      backgroundColor: MaterialStateProperty.all(
                        Color(0xFF1F319D),
                      )),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Or sign in with",
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Center(
                child: Row(
                  children: [
                    Container(
                      height: 63,
                      width: 99,
                      color: Colors.white,
                      child: Image.asset("assets/images/google.png"),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Container(
                      height: 63,
                      width: 99,
                      color: Colors.white,
                      child: Image.asset("assets/images/facebook.png"),
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Container(
                      height: 63,
                      width: 99,
                      color: Colors.white,
                      child: Image.asset("assets/images/twitter.png"),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don’t have an account?"),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context,
                        MaterialPageRoute(builder: (context)=>SignUp()),
                        );
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
