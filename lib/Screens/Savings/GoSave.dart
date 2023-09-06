import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_clone/Constants/assets_path.dart';
import 'package:govest_clone/Constants/text_path.dart';

class GoSaveScreen extends StatefulWidget {
  const GoSaveScreen({super.key});

  @override
  State<GoSaveScreen> createState() => _GoSaveScreenState();
}

class _GoSaveScreenState extends State<GoSaveScreen> {
   List<String> items1 = [
    "Autosave",
    "Manual",
  ];
  int current1 = 0;
  bool _switchFunction = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(left:20.sp, right: 20.sp, top: 30.sp),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10.sp,
                  ),
                  Text(GoVestText.Gowallet,
                    style: TextStyle(
                        fontSize: 20.sp,
                        fontFamily: GoVestAssets.Type,
                        fontWeight: FontWeight.w700,
                        color: Color(0xff3B5AFB)),
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  Text(
                    GoVestText.TapAnyOption,
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontFamily: GoVestAssets.Type,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  Text(GoVestText.AmounttoSave, style: TextStyle(
                    fontFamily: GoVestAssets.Type,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff979797)
                  ),),
                  Container(
                    padding: EdgeInsets.only(
                        bottom: 5.0), // Adjust the padding as needed
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black, // Color of the bottom border
                          width: 2.0, // Width of the bottom border
                        ),
                      ),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: '20,000',
                        prefixIcon: Image.asset(
                            GoVestAssets.MediumBlackNaira), // Placeholder text
                        labelStyle: TextStyle(
                            fontSize: 20.sp,
                            color: Color(0xff000000),
                            fontFamily: GoVestAssets.Type,
                            fontWeight: FontWeight.w700), // Color of the label text
                        border: InputBorder.none, // Hide the default border
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  Row(
                    children: [
                     Container(
                        height: 12.sp,
                        width: 12.sp,
                        decoration: BoxDecoration(
                            color: Color(0xff0EB51F),
                            borderRadius: BorderRadius.circular(50)),
                        child: Icon(
                          Icons.done,
                          size: 12,
                          color: Color(0xffFFFFFF),
                        ),
                      ),
                      SizedBox(
                        width: 5.sp,
                      ),
                      Text(
                        GoVestText.AmounttoLock,
                        style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: GoVestAssets.Type,
                            color: Color(0xff979797)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 50.sp,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 40.sp,
                        height: 20.sp,
                        decoration: BoxDecoration(
                          color: Color(0xff979797),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Switch(
                          value: _switchFunction,
                          onChanged: (value) {
                            setState(() {
                              _switchFunction = value;
                            });
                          },
                        ),
                      ),
                      SizedBox(
                        width: 260.sp,
                        child: Text(
                         GoVestText.IAcknowledge,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: GoVestAssets.Type,
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 50.sp,
                  ),
                  Text(
                   GoVestText.SelectPayMeth,
                    style: TextStyle(
                      fontSize: 18.sp,
                        fontFamily: GoVestAssets.Type,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff979797),
                    ),
                  ),
                  SizedBox(
                    height: 15.sp,
                  ),
                  Text(
                    GoVestText.TapAnyOption,
                    style: TextStyle(
                      fontSize: 12.sp,
                        fontFamily: GoVestAssets.Type,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    height: 40.sp,
                  ),
                  Container(
                    height: 60.sp,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xff0EB51F),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Padding(
                      padding: EdgeInsets.only(left:20.sp, right: 20.sp, top: 20.sp),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                           GoVestText.UseGoWallet,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: GoVestAssets.Type,
                                fontWeight: FontWeight.w700,
                                fontSize: 16.sp),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15.sp,
                  ),
                  Container(
                    height: 60.sp,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Color(0xff3B5AFB),
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 20.sp,
                        ),
                        Image.asset(GoVestAssets.Mastercard),
                        SizedBox(
                          width: 15.sp,
                        ),
                        Center(
                          child: Text(
                            GoVestText.UseCardWithPayStack,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: GoVestAssets.Type,
                                fontWeight: FontWeight.w700,
                                fontSize: 16.sp),
                          ),
                        ),
                      ],
                    ),
                  ),
               SizedBox(
                height: 30.sp,
               )
                ],
              ),
          ),
          ),
      ),
      );
    
  }
}