import 'package:cakery_app/constant/app_constant.dart';
import 'package:cakery_app/views/auth_screens/forgot_password.dart';
import 'package:cakery_app/views/auth_screens/sign_up_screen.dart';
import 'package:cakery_app/widgets/common_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,

      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 8.h,
                  ),
                  text(
                    text: "Already Registered? Login",
                    color: Colors.black,
                    fontsize: 15.sp,
                    fontWeight: FontWeight.bold
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextFormField(
                      // controller: ,
                      style: const TextStyle(color: Colors.black,),
                      keyboardType: TextInputType.emailAddress,
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
                    height: 2.h,
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
                        hintText: "Password",
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
                  Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.white,
                        fillColor: MaterialStateProperty.all(appColor),
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      const Text("Save my access data", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  MaterialButton(onPressed: () {

                  }, child: text(
                    text: "SIGN IN",
                    color: Colors.white
                  ),
                  color: appColor,
                    minWidth: MediaQuery.of(context).size.width,
                    height: 5.h,
                  ),
                  TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotScreen()));
                  }, child: const Text("Forgot Password", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                  ),
                  SizedBox(
                    height: 4.h,
                  ),

                  const Text("Don't have an Account", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 2.h,
                  ),
                  MaterialButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const SignUpScreen()));

                  }, child: text(
                      text: "SIGN UP",
                      color: Colors.white
                  ),
                    color: appColor,
                    minWidth: MediaQuery.of(context).size.width,
                    height: 5.h,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
