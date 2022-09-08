import 'package:cakery_app/Controller/Fetchlist.dart';
import 'package:cakery_app/constant/app_constant.dart';
import 'package:cakery_app/widgets/common_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dropdown_formfield/dropdown_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import '../../Model/Features_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentPos = 0;
  int? _packController;
  int? _packController1;
  int? _packController2;
  int? _quantityController;
  int? _quantityController1;
  int? _quantityController2;
  int? _quantityController3;
  int? _quantityController4;

  List<String> listPaths = [
    "images/image1.jpg",
    "images/image2.jpg",
  ];


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: screenSize.width,
              height: 4.h,
              decoration: const BoxDecoration(
                color: appColor,
              ),
              child: Center(
                child: text(
                    text: "Click & Collect And Delivery Available",
                    color: Colors.white,
                    fontsize: 12.sp),
              ),
            ),
            CarouselSlider.builder(
              itemCount: listPaths.length,
              options: CarouselOptions(
                  autoPlay: true,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentPos = index;
                    });
                  }),
              itemBuilder: (context, index, _) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  child: MyImageView(listPaths[index]),
                );
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: listPaths.map((url) {
                int index = listPaths.indexOf(url);
                return Container(
                  width: 8.0,
                  height: 8.0,
                  margin: const EdgeInsets.symmetric(
                      vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: currentPos == index
                        ? const Color.fromRGBO(0, 0, 0, 0.9)
                        : const Color.fromRGBO(0, 0, 0, 0.4),
                  ),
                );
              }).toList(),
            ),
            SizedBox(
              height: 2.h,
            ),
            Consumer<fetchlist>(
              builder: (context, fetchlist, child) {
                return ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: fetchlist.productlist.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        width: screenSize.width * 0.2,
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                  child: Container(
                                      width: 60.w,
                                      padding: EdgeInsets.all(20),
                                      height: 30.h,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: FadeInImage.assetNetwork(
                                        placeholder: "images/emptybox.png",
                                        image: "${fetchlist.productlist[index].image}",
                                        fit: BoxFit.cover,
                                      ))),
                              SizedBox(
                                height: 2.h,
                              ),
                              Container(
                                child: text(
                                    text: fetchlist.productlist[index].name,
                                    color: Colors.black,
                                    fontsize: 13.sp,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                  width: 30.w,
                                  height: 5.h,
                                  decoration: BoxDecoration(
                                      color: Colors.green.shade300,
                                      borderRadius: BorderRadius.circular(7)),
                                  child: Center(
                                    child: text(
                                        text:
                                            "Stock:${fetchlist.productlist[index].stock}",
                                        color: Colors.white),
                                  )),
                              SizedBox(
                                height: 2.h,
                              ),
                              fetchlist.productlist[index].charesteristic.length != 0
                                  ? DropdownButtonFormField<int>(
                                      decoration: InputDecoration(
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.black, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        border: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.black, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(
                                              color: Colors.black, width: 1),
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        filled: true,
                                        fillColor: Colors.white,
                                      ),
                                      dropdownColor: Colors.white,
                                      value: _packController1,
                                      items: [1, 5, 10, 25]
                                          .map((label) => DropdownMenuItem(
                                                child: Text(label.toString()),
                                                value: label,
                                              ))
                                          .toList(),
                                      hint: const Text('Pack of'),
                                      onChanged: (value) {
                                        setState(() {
                                          _packController1 = value;
                                        });
                                      },
                                    )
                                  : Container(),
                              SizedBox(
                                height: 2.h,
                              ),
                              DropdownButtonFormField<int>(
                                decoration: InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.black, width: 1),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.black, width: 1),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: const BorderSide(
                                        color: Colors.black, width: 1),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  filled: true,
                                  fillColor: Colors.white,
                                ),
                                dropdownColor: Colors.white,
                                value: _quantityController3,
                                items: [
                                  1,
                                  2,
                                  3,
                                  4,
                                  5,
                                  6,
                                  7,
                                  8,
                                  9,
                                  10,
                                  11,
                                  12,
                                  13,
                                  14,
                                  15,
                                  16,
                                  17,
                                  1,
                                  19,
                                  20,
                                  21,
                                  22,
                                  23,
                                  24,
                                  25,
                                  26,
                                  27,
                                  28,
                                  29,
                                  30
                                ]
                                    .map((label) => DropdownMenuItem(
                                          child: Text(label.toString()),
                                          value: label,
                                        ))
                                    .toList(),
                                hint: const Text('Quantity'),
                                onChanged: (value) {
                                  setState(() {
                                    _quantityController3 = value;
                                  });
                                },
                              ),
                              SizedBox(
                                height: 2.h,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        "images/pound2.png",
                                        width: 5.w,
                                        height: 2.7.h,
                                      ),
                                      Text(
                                          "${double.parse(fetchlist.productlist[index].calculated_price.toString()) * 5}"),
                                    ],
                                  ),
                                  const Icon(Icons.shopping_cart_outlined),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              },
            ),
          ],
        ),
      )),
    );
  }

  Widget cupCakeHolder() {
    return Container(
      width: 85.w,
      height: 73.h,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 50.w,
                height: 30.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                    child: Image(image: AssetImage("images/emptybox.png"))),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              child: text(
                  text: "1 Cupcake Holder Box",
                  color: Colors.black,
                  fontsize: 13.sp,
                  fontWeight: FontWeight.bold),
            ),
            Container(
                width: 30.w,
                height: 5.h,
                decoration: BoxDecoration(
                    color: Colors.green.shade300,
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                  child: text(text: "In Stock: 380", color: Colors.white),
                )),
            SizedBox(
              height: 2.h,
            ),
            DropdownButtonFormField<int>(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              dropdownColor: Colors.white,
              value: _packController,
              items: [1, 5, 10, 25]
                  .map((label) => DropdownMenuItem(
                        child: Text(label.toString()),
                        value: label,
                      ))
                  .toList(),
              hint: const Text('Pack of'),
              onChanged: (value) {
                setState(() {
                  _packController = value;
                });
              },
            ),
            SizedBox(
              height: 2.h,
            ),
            DropdownButtonFormField<int>(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              dropdownColor: Colors.white,
              value: _quantityController,
              items: [
                1,
                2,
                3,
                4,
                5,
                6,
                7,
                8,
                9,
                10,
                11,
                12,
                13,
                14,
                15,
                16,
                17,
                1,
                19,
                20,
                21,
                22,
                23,
                24,
                25,
                26,
                27,
                28,
                29,
                30
              ]
                  .map((label) => DropdownMenuItem(
                        child: Text(label.toString()),
                        value: label,
                      ))
                  .toList(),
              hint: const Text('Quantity'),
              onChanged: (value) {
                setState(() {
                  _quantityController = value;
                });
              },
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "images/pound2.png",
                      width: 5.w,
                      height: 2.7.h,
                    ),
                    Text("0.49"),
                  ],
                ),
                const Icon(Icons.shopping_cart_outlined),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget macTop() {
    return Container(
      width: 85.w,
      height: 63.h,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 50.w,
                height: 30.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                    child: Image(image: AssetImage("images/emptybox.png"))),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              child: text(
                  text: "MACTOP 10L",
                  color: Colors.black,
                  fontsize: 13.sp,
                  fontWeight: FontWeight.bold),
            ),
            Container(
                width: 30.w,
                height: 5.h,
                decoration: BoxDecoration(
                    color: Colors.green.shade300,
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                  child: text(text: "In Stock: 46", color: Colors.white),
                )),
            SizedBox(
              height: 2.h,
            ),
            DropdownButtonFormField<int>(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              dropdownColor: Colors.white,
              value: _quantityController1,
              items: [
                1,
                2,
                3,
                4,
                5,
                6,
                7,
                8,
                9,
                10,
                11,
                12,
                13,
                14,
                15,
                16,
                17,
                1,
                19,
                20,
                21,
                22,
                23,
                24,
                25,
                26,
                27,
                28,
                29,
                30
              ]
                  .map((label) => DropdownMenuItem(
                        child: Text(label.toString()),
                        value: label,
                      ))
                  .toList(),
              hint: const Text('Quantity'),
              onChanged: (value) {
                setState(() {
                  _quantityController1 = value;
                });
              },
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "images/pound2.png",
                      width: 5.w,
                      height: 2.7.h,
                    ),
                    Text("32.0"),
                  ],
                ),
                const Icon(Icons.shopping_cart_outlined),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget macTopTraditional() {
    return Container(
      width: 85.w,
      height: 63.h,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 50.w,
                height: 30.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                    child: Image(image: AssetImage("images/emptybox.png"))),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              child: text(
                  text: "Mactop Traditional 1Litre x pack of 12",
                  color: Colors.black,
                  fontsize: 11.sp,
                  fontWeight: FontWeight.bold),
            ),
            Container(
                width: 30.w,
                height: 5.h,
                decoration: BoxDecoration(
                    color: Colors.green.shade300,
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                  child: text(text: "In Stock: 3", color: Colors.white),
                )),
            SizedBox(
              height: 2.h,
            ),
            DropdownButtonFormField<int>(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              dropdownColor: Colors.white,
              value: _quantityController2,
              items: [
                1,
                2,
                3,
                4,
                5,
                6,
                7,
                8,
                9,
                10,
                11,
                12,
                13,
                14,
                15,
                16,
                17,
                1,
                19,
                20,
                21,
                22,
                23,
                24,
                25,
                26,
                27,
                28,
                29,
                30
              ]
                  .map((label) => DropdownMenuItem(
                        child: Text(label.toString()),
                        value: label,
                      ))
                  .toList(),
              hint: const Text('Quantity'),
              onChanged: (value) {
                setState(() {
                  _quantityController2 = value;
                });
              },
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "images/pound2.png",
                      width: 5.w,
                      height: 2.7.h,
                    ),
                    Text("72.96"),
                  ],
                ),
                const Icon(Icons.shopping_cart_outlined),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget cupCakeHolder1() {
    return Container(
      width: 85.w,
      height: 73.h,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 50.w,
                height: 30.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                    child: Image(image: AssetImage("images/emptybox.png"))),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              child: text(
                  text: "4 Cupcake Holder Box",
                  color: Colors.black,
                  fontsize: 13.sp,
                  fontWeight: FontWeight.bold),
            ),
            Container(
                width: 30.w,
                height: 5.h,
                decoration: BoxDecoration(
                    color: Colors.green.shade300,
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                  child: text(text: "In Stock: 10", color: Colors.white),
                )),
            SizedBox(
              height: 2.h,
            ),
            DropdownButtonFormField<int>(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              dropdownColor: Colors.white,
              value: _packController1,
              items: [1, 5, 10, 25]
                  .map((label) => DropdownMenuItem(
                        child: Text(label.toString()),
                        value: label,
                      ))
                  .toList(),
              hint: const Text('Pack of'),
              onChanged: (value) {
                setState(() {
                  _packController1 = value;
                });
              },
            ),
            SizedBox(
              height: 2.h,
            ),
            DropdownButtonFormField<int>(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              dropdownColor: Colors.white,
              value: _quantityController3,
              items: [
                1,
                2,
                3,
                4,
                5,
                6,
                7,
                8,
                9,
                10,
                11,
                12,
                13,
                14,
                15,
                16,
                17,
                1,
                19,
                20,
                21,
                22,
                23,
                24,
                25,
                26,
                27,
                28,
                29,
                30
              ]
                  .map((label) => DropdownMenuItem(
                        child: Text(label.toString()),
                        value: label,
                      ))
                  .toList(),
              hint: const Text('Quantity'),
              onChanged: (value) {
                setState(() {
                  _quantityController3 = value;
                });
              },
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "images/pound2.png",
                      width: 5.w,
                      height: 2.7.h,
                    ),
                    Text("0.49"),
                  ],
                ),
                const Icon(Icons.shopping_cart_outlined),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget cupCakeHolder2() {
    return Container(
      width: 85.w,
      height: 73.h,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                width: 50.w,
                height: 30.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                    child: Image(image: AssetImage("images/emptybox.png"))),
              ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Container(
              child: text(
                  text: "2 Cupcake Holder Box",
                  color: Colors.black,
                  fontsize: 13.sp,
                  fontWeight: FontWeight.bold),
            ),
            Container(
                width: 30.w,
                height: 5.h,
                decoration: BoxDecoration(
                    color: Colors.green.shade300,
                    borderRadius: BorderRadius.circular(7)),
                child: Center(
                  child: text(text: "In Stock: 5", color: Colors.white),
                )),
            SizedBox(
              height: 2.h,
            ),
            DropdownButtonFormField<int>(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              dropdownColor: Colors.white,
              value: _packController2,
              items: [1, 5, 10, 25]
                  .map((label) => DropdownMenuItem(
                        child: Text(label.toString()),
                        value: label,
                      ))
                  .toList(),
              hint: const Text('Pack of'),
              onChanged: (value) {
                setState(() {
                  _packController2 = value;
                });
              },
            ),
            SizedBox(
              height: 2.h,
            ),
            DropdownButtonFormField<int>(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black, width: 1),
                  borderRadius: BorderRadius.circular(8),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
              dropdownColor: Colors.white,
              value: _quantityController4,
              items: [
                1,
                2,
                3,
                4,
                5,
                6,
                7,
                8,
                9,
                10,
                11,
                12,
                13,
                14,
                15,
                16,
                17,
                1,
                19,
                20,
                21,
                22,
                23,
                24,
                25,
                26,
                27,
                28,
                29,
                30
              ]
                  .map((label) => DropdownMenuItem(
                        child: Text(label.toString()),
                        value: label,
                      ))
                  .toList(),
              hint: const Text('Quantity'),
              onChanged: (value) {
                setState(() {
                  _quantityController4 = value;
                });
              },
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "images/pound2.png",
                      width: 5.w,
                      height: 2.7.h,
                    ),
                    Text("0.79"),
                  ],
                ),
                const Icon(Icons.shopping_cart_outlined),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyImageView extends StatefulWidget {
  String imgPath;

  MyImageView(this.imgPath, {Key? key}) : super(key: key);

  @override
  State<MyImageView> createState() => _MyImageViewState();
}

class _MyImageViewState extends State<MyImageView> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        margin: const EdgeInsets.symmetric(horizontal: 5),
        child: FittedBox(
          fit: BoxFit.fill,
          child: Image.asset(widget.imgPath),
        ));
  }
}
