import 'package:cakery_app/constant/app_constant.dart';
import 'package:cakery_app/views/auth_screens/login_screen.dart';
import 'package:cakery_app/views/orders_screen/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

Widget text({ String? text , Color? color ,FontWeight? fontWeight, double? fontsize }) {
   return Text(text! , style: TextStyle(color: color, fontWeight:fontWeight , fontSize: fontsize),);
}
PreferredSizeWidget appBar(BuildContext context) {
   return AppBar(
      backgroundColor: Colors.white,
      iconTheme: const IconThemeData(color: appColor),
      title:  Image(image:  const AssetImage("images/app_icon.png"), width: 10.w, height: 7.h,),
      actions: [
         IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
         }, icon: const Icon(Icons.person)),

         IconButton(onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const CartScreens()));
         }, icon: const Icon(Icons.shopping_cart , color: Colors.black,)),
      ],

   );
}
Widget drawer(BuildContext context) {
   return Drawer(
     child: ListView(
        children:  [
           DrawerHeader(
              decoration: const BoxDecoration(
                 color: appColor,
              ),
              child: Center(
                 child: Image(image: const AssetImage("images/app_icon.png"), width: 30.w,height: 20.h,),
              ),
           ),
           SizedBox(
              height: 2.h,
           ),
           ListTile(
              onTap: () {
                 Navigator.pop(context);
              },
              leading: Icon(Icons.home, size: 22.sp,color: appColor,),
              title: text(
                 text: "Home",
                 color: appColor,
                 fontsize: 16.sp,
                 fontWeight: FontWeight.bold,
              ),
           ),
           SizedBox(
              height: 1.5.h,
           ),
           ListTile(
              onTap: () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                 Navigator.pop(context);
              },
              leading: Icon(Icons.person_outline, size: 22.sp,color: appColor,),
              title: text(
                 text: "Profile",
                 color: appColor,
                 fontsize: 16.sp,
                 fontWeight: FontWeight.bold,
              ),
           ),
           SizedBox(
              height: 1.5.h,
           ),
           ListTile(
              onTap: () {
                 Navigator.pop(context);
              },
              leading: Icon(Icons.search, size: 22.sp,color: appColor,),
              title: text(
                 text: "Search",
                 color: appColor,
                 fontsize: 16.sp,
                 fontWeight: FontWeight.bold,
              ),
           ),
           SizedBox(
              height: 1.5.h,
           ),
           ListTile(
              onTap: () {
                 Navigator.pop(context);
              },
              leading: Icon(Icons.business_outlined, size: 22.sp,color: appColor,),
              title: text(
                 text: "About Us",
                 color: appColor,
                 fontsize: 16.sp,
                 fontWeight: FontWeight.bold,
              ),
           ),
           SizedBox(
              height: 1.5.h,
           ),
           ListTile(
              onTap: () {
                 Navigator.pop(context);
              },
              leading: Icon(Icons.business_outlined, size: 22.sp,color: appColor,),
              title: text(
                 text: "Terms & Conditions",
                 color: appColor,
                 fontsize: 16.sp,
                 fontWeight: FontWeight.bold,
              ),
           ),



        ],
     ),
   );
}