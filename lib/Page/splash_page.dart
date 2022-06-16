import 'package:finance_app/Page/home_page.dart';
import 'package:finance_app/Theme/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18),
            color: bgColor,
            boxShadow: [
              BoxShadow(
                offset: Offset(4, 4),
                color: Colors.black,
                blurRadius: 5,
                spreadRadius: 1,
              ),
              BoxShadow(
                offset: Offset(-4, -4),
                color: Colors.blueGrey,
                blurRadius: 5,
                spreadRadius: 0,
              )
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.wallet,
                size: 100,
                color: Color(0xffF1C4A4),
              ),
              Text(
                'Digital Wallet',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 209, 133, 79),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
