import 'package:cakery_app/widgets/common_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
 class OrderScreen extends StatefulWidget {
   const OrderScreen({Key? key}) : super(key: key);

   @override
   State<OrderScreen> createState() => _OrderScreenState();
 }

 class _OrderScreenState extends State<OrderScreen> {
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       body: SafeArea(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children:  [
                Center(child: Image(image: AssetImage("images/emptybox.png"),height: 30.h,width: 50.w,)),
                text(
                text: "No Recent Order Found",
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontsize: 18.sp,
               )
             ],
           )),
     );
   }
 }
