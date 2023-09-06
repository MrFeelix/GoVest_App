import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_clone/Constants/assets_path.dart';
import 'package:govest_clone/Constants/text_path.dart';
import 'package:govest_clone/Screens/Savings/GoSafeLock.dart';
import 'package:govest_clone/Screens/Savings/GoSavings_Savings.dart';
import 'package:govest_clone/Screens/Savings/SavingScreen2.dart';

class NewSavings extends StatefulWidget {
  const NewSavings({super.key});

  @override
  State<NewSavings> createState() => _NewSavingsState();
}

class _NewSavingsState extends State<NewSavings> {
  List<String> items = [
    '',
    '',
    '',
  ];

  int current = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20.0),
            child: Column(
              children: [
                SizedBox(
                  height: 30.sp,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context)=>SavingsScreen2())
                        );
                      },
                      child: Image.asset(
                        GoVestAssets.Cancel,
                        color: Color(0xff3B5AFB),
                      ),
                    ),
                    Image.asset(GoVestAssets.Infoo),
                  ],
                ),
                SizedBox(
                  height: 70.sp,
                ),
                Container(
                  height: 170.sp,
                  width: 170.sp,
                  decoration: BoxDecoration(
                      color: Color(0xff3B5AFB),
                      borderRadius: BorderRadius.circular(150)),
                  child: Image.asset(GoVestAssets.ReadingSide),
                ),
                SizedBox(
                  height: 15.sp,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      GoVestText.SavingsDiscipline,
                      style: TextStyle(
                        fontFamily: GoVestAssets.Type,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Color(0xff000000),
                      ),
                    ),
                    SizedBox(
                      height: 30.sp,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: SizedBox(
                        width: 260,
                        child: Text(
                          GoVestText.Savewithdiscipline,
                          style: TextStyle(
                            fontFamily: GoVestAssets.Type,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 100.sp),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height / 12,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: items.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, index) {
                        return Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    current = index;
                                  },
                                );
                              },
                              child: AnimatedContainer(
                                duration: const Duration(milliseconds: 100),
                                margin: EdgeInsets.all(5),
                                width: MediaQuery.of(context).size.width / 12,
                                height: MediaQuery.of(context).size.height / 85,
                                decoration: BoxDecoration(
                                  color: current == index
                                      ? Color(0xff3B5AFB)
                                      : Color(0xff3B5AFB).withOpacity(0.3),
                                  borderRadius: current == index
                                      ? BorderRadius.circular(15.0)
                                      : BorderRadius.circular(10),
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 66.sp,
                      width: 278.sp,
                      decoration: BoxDecoration(
                        color: Color(0xff3B5AFB),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context)=>GoSavings_Savings())
                            );
                          },
                          child: Text(
                            GoVestText.CREATEGOSAVINGS,
                            style: TextStyle(
                              fontFamily: GoVestAssets.Type,
                              fontWeight: FontWeight.w700,
                              fontSize: 18,
                              color: Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.sp,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context)=>GoSafeLockScreen())
                        );
                      },
                      child: Container(
                        height: 66.sp,
                        width: 278.sp,
                        decoration: BoxDecoration(
                          color: Color(0xff0EB51F),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              GoVestText.CREATEGOSAFE,
                              style: TextStyle(
                                fontFamily: GoVestAssets.Type,
                                fontWeight: FontWeight.w700,
                                fontSize: 18,
                                color: Color(0xffFFFFFF),
                              ),
                            ),
                            SizedBox(
                              width: 5.sp,
                            ),
                            Icon(
                              Icons.lock,
                              color: Color(0xffFFFFFF),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
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
