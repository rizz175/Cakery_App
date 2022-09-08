import 'package:cakery_app/constant/app_constant.dart';
import 'package:cakery_app/widgets/common_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body:  SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: 3.h,
              ),
              Padding(
                padding:  EdgeInsets.only(left: 10.w, right: 10.w),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),

                  ),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    // controller: ,
                    style: const TextStyle(color: Colors.black,),
                    keyboardType: TextInputType.name,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      floatingLabelAlignment: FloatingLabelAlignment.center,
                      hintText: "Search any thing..",
                      contentPadding: const EdgeInsets.all(12),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey.shade200)
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color: Colors.grey.shade200)
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 2.h,
              ),

              MaterialButton(
                child: text(
                  text: "SEARCH",
                  color: Colors.white
                ),
                color: appColor,
                minWidth: 30.w,
                onPressed: () {

                },
              )
            ],
          )),
    );
  }
}
