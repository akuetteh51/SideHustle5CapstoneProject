import 'package:flutter/material.dart';
import 'screen2.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetologin();
  }

  _navigatetologin() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const LogIn()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1F319D),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logoWhite.png",
              width: 121.65,
              height: 83.47,
            ),
            const Text(
              'REPAIR HOME',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.w100,
                color: Color(0xFFEEEDF3),
                fontFamily: 'Gobold',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
