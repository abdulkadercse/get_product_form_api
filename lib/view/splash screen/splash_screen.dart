import 'package:flutter/material.dart';
import '../home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Future<void> goToHomeScreen() async {
    await Future.delayed(const Duration(seconds: 2)).then((value) =>
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HomeScreen())));
  }

  @override
  void initState() {
    goToHomeScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: CircleAvatar(
          radius: 70.0,
          backgroundColor: Colors.orange,
          child: Text(
            "Get Data",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
