import 'package:cakery_app/constant/app_constant.dart';
import 'package:cakery_app/views/auth_screens/login_screen.dart';
import 'package:cakery_app/widgets/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool isChecked = false;
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
                  height: 2.h,
                ),
                text(
                    text: "Register Account",
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
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                      hintText: "UserName",
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
                      hintText: "Confirm Password",
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
                    const Text("Agree Terms and Conditions", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),)
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
                text(
                  text: "By Clicking Signup! You Agree to the Terms and",
                  color: appColor,
                  fontsize: 11.sp,
                ),
                text(
                  text: "Conditions of the Cakery Suppliers",
                  color: appColor,
                  fontsize: 11.sp,
                ),


                SizedBox(
                  height: 4.h,
                ),
                MaterialButton(onPressed: () {

                }, child: text(
                    text: "SIGN UP",
                    color: Colors.white
                ),
                  color: appColor,
                  minWidth: MediaQuery.of(context).size.width,
                  height: 5.h,
                ),
                SizedBox(
                  height: 2.h,
                ),
                TextButton(onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                }, child:  Text("Already Registered? Login", style: TextStyle(color:appColor, fontWeight: FontWeight.bold , fontSize: 15.sp),)
                ),
                SizedBox(
                  height: 2.h,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
