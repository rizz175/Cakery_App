import 'package:cakery_app/constant/app_constant.dart';
import 'package:cakery_app/views/auth_screens/login_screen.dart';
import 'package:cakery_app/views/home_screen/home_screen.dart';
import 'package:cakery_app/views/orders_screen/order_screen.dart';
import 'package:cakery_app/views/profile_screens/profile_screen.dart';
import 'package:cakery_app/views/search_screen/search_screen.dart';
import 'package:cakery_app/widgets/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class BottomNavigation extends StatefulWidget {
  const BottomNavigation({Key? key}) : super(key: key);

  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    SearchScreen(),
    OrderScreen(),
    ProfileScreen(),

  ];
  int _value = 1;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      drawer: drawer(context),

      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          items:   <BottomNavigationBarItem>[

            const BottomNavigationBarItem(
              icon:  const Icon(Icons.home),
              label: "",
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "",
            ), BottomNavigationBarItem(
              icon:  Image(image: const AssetImage("images/icon_shopping_bag.png"),width: 10.w, height: 3.5.h,color: appColor, ),
              label: "",
            ), const BottomNavigationBarItem(
              icon:  Icon(Icons.person),
              label: "",
            ),
          ],
          type: BottomNavigationBarType.fixed,


          selectedIconTheme: IconThemeData(color: appColor, size: 25.sp),
          unselectedIconTheme:  IconThemeData(color: appColor, size:20.sp),
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          onTap: _onItemTapped,
          elevation: 9
      ),
    );
  }
}
