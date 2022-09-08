import 'package:cakery_app/widgets/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../constant/app_constant.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(context),
      drawer: drawer(context),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 3.h,
                  ),
                  text(
                      text: "Forgot Password?",
                      color: Colors.black,
                      fontsize: 15.sp,
                      fontWeight: FontWeight.bold
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  text(
                      text: "Enter your Email",
                      color: Colors.black,
                      fontsize: 13.sp,

                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextFormField(
                      // controller: ,
                      style: const TextStyle(color: Colors.black,),
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        floatingLabelAlignment: FloatingLabelAlignment.center,
                        hintText: "Email",
                        contentPadding: const EdgeInsets.all(12),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.grey.shade200)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Colors.grey.shade200)
                        ),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 4.h,
                  ),
                  MaterialButton(onPressed: () {

                  }, child: text(
                      text: "CONFIRM",
                      color: Colors.white
                  ),
                    color: appColor,
                    minWidth: MediaQuery.of(context).size.width,
                    height: 5.h,
                  ),
                  SizedBox(
                    height: 4.h,
                  ),
                  text(
                    text: "You will receive a change password email",
                    color: appColor,
                    fontsize: 11.sp,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  text(
                    text: "in your mailbox go to the Link and change your",
                    color: appColor,
                    fontsize: 11.sp,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  text(
                    text: "password",
                    color: appColor,
                    fontsize: 11.sp,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
