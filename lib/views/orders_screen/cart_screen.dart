import 'package:cakery_app/widgets/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CartScreens extends StatefulWidget {
  const CartScreens({Key? key}) : super(key: key);

  @override
  State<CartScreens> createState() => _CartScreensState();
}

class _CartScreensState extends State<CartScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      drawer: drawer(context),
      body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Center(child: Image(image: const AssetImage("images/empty_cart.png"), width: 50.w,height: 30.h,)),

            ],
          ) ),
    );
  }
}
