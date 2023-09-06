import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_clone/Constants/assets_path.dart';
import 'package:govest_clone/Constants/text_path.dart';
import 'package:govest_clone/Screens/Savings/GoSavings_Savings.dart';
import 'package:govest_clone/Screens/Savings/PreviewSavings.dart';

class TargetSavingsScreen extends StatefulWidget {
  const TargetSavingsScreen({super.key});

  @override
  State<TargetSavingsScreen> createState() => _TargetSavingsScreenState();
}

class _TargetSavingsScreenState extends State<TargetSavingsScreen> {
  List<String> items = [
    "Daily",
    "Weekly",
    "Montly",
  ];
  int current = 0;
  List<String> items1 = [
    "Autosave",
    "Manual",
  ];
  int current1 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
           padding: EdgeInsets.only(left:15.sp, right: 25.sp, top: 30.sp),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context)=>GoSavings_Savings())
                    );
                  },
                  child: Icon( Icons.close,color: Color(0xff3B5AFB), size: 35,)),
                  SizedBox(
                    height: 20.sp,
                  ),
                  Text(
                    GoVestText.CreateGotarget,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff3B5AFB),
                    ),
                  ),
                  SizedBox(
                    height: 30.sp,
                  ),
                  Text(
                    GoVestText.HowMuch,
                    style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff979797),
                    fontFamily: GoVestAssets.Type,
                  ),
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        bottom: 5.0), // Adjust the padding as needed
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black, // Color of the bottom border
                            width: 1.3, // Width of the bottom border
                        ),
                      ),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: '200,000',
                        prefixIcon: Image.asset(
                           GoVestAssets.MediumBlackNaira), // Placeholder text
                        labelStyle: TextStyle(
                            color: Colors.black,
                          fontFamily: GoVestAssets.Type,
                          fontSize: 22,
                          fontWeight: FontWeight.w700
                            ), // Color of the label text
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
                          GoVestText.Typeinamount,
                        style: TextStyle(
                        fontFamily: GoVestAssets.Type,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff979797)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 30.sp,
                  ),
                  Container(
                    padding: EdgeInsets.only(
                        bottom: 5.0), // Adjust the padding as needed
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Colors.black, // Color of the bottom border
                           width: 1.3, // Width of the bottom border
                        ),
                      ),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: GoVestText.SetTitleTarget,
                        labelStyle: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff979797),
                    fontFamily: GoVestAssets.Type,
                  ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.sp,
                  ),
                  Text(
                    GoVestText.HowDoYouWantToSave,
                     style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff979797),
                    fontFamily: GoVestAssets.Type,
                  ),
                  ),
                  SizedBox(
                    height: 10.sp,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 10,
                    width: double.infinity,
                    child: ListView.builder(
                        itemCount: items.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          return Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    current = index;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 100),
                                  margin: EdgeInsets.all(5),
                                  width: 100.sp,
                                  height: 50.sp,
                                  decoration: BoxDecoration(
                                      color: current == index
                                          ? Color(0xff2A52E2)
                                          : Colors.white.withOpacity(0.12),
                                      border:
                                          Border.all(color: Color(0xffE7E7F6)),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                    child: Text(
                                      items[index],
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontFamily: GoVestAssets.Type,
                                          fontSize:12 ,
                                          color: current == index
                                              ? Colors.white
                                              : Color(0xff2A52E2)),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                  SizedBox(
                    height: 20.sp,
                  ),
                  Text(
                    GoVestText.HowDoYouWantToSave,
                     style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff979797),
                    fontFamily: GoVestAssets.Type,
                  ),
                  ),
                    SizedBox(
                    height: 10.sp,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 10,
                    width: double.infinity,
                    child: ListView.builder(
                        itemCount: items1.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (ctx, index) {
                          return Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    current1 = index;
                                  });
                                },
                                child: AnimatedContainer(
                                  duration: const Duration(milliseconds: 100),
                                  margin: EdgeInsets.all(5),
                                  width: 100.sp,
                                  height: 50.sp,
                                  decoration: BoxDecoration(
                                      color: current1 == index
                                          ? Color(0xff2A52E2)
                                          : Colors.white,
                                      border: Border.all(color: Color(0xffE7E7F6)),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 10.sp,
                                        ),
                                        Container(
                                          height: 20.sp,
                                          width: 20.sp,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(50),
                                            color: current1 == index
                                                ? Colors.white
                                                : Color(0xff2A52E2),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 10.sp,
                                        ),
                                        Text(
                                          items1[index],
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              color: current1 == index
                                                  ? Colors.white
                                                  : Color(0xff2A52E2)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          );
                        }),
                  ),
                  SizedBox(
                    height: 70.sp,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context)=>PreviewSavingsScreen())
                      );
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 60.sp,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.r),
                        color: Color(0xff3B5AFB),
                      ),
                      child: Center(
                        child: Text(
                         GoVestText.CONTINUE,
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontFamily: GoVestAssets.Type
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.sp,
                  ),
               
                ],
              ),
          ),
        ),
      ),
    );
  }
}