import 'package:cakery_app/Controller/Fetchlist.dart';
import 'package:cakery_app/constant/app_constant.dart';
import 'package:cakery_app/views/auth_screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
void main() {
  runApp(const MyApp(),);
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: appColor,
    systemNavigationBarColor: Colors.white,
    statusBarBrightness: Brightness.dark,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider<fetchlist>(
          create: (context) =>fetchlist(),

      ),
    ], child:Sizer(
        builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Cakery',
        theme: ThemeData.light(),
        home: const SplashScreen() ,
      );
    },
    ));

  }
}
