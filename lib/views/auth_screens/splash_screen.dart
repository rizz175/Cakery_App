import 'package:cakery_app/views/bottom_nav_bar/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 @override
 void initState() {
   Future.delayed(const Duration(seconds: 2) , () {
     Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => const BottomNavigation()), (route) => false);
   });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
          child:Container(
            width: screenSize.width,
            height: screenSize.height,
            child: const FittedBox(
                fit: BoxFit.cover,
                child: Image(image: AssetImage("images/splash.png"),)),
          ) ),
    );
  }
}
