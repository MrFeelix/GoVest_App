import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_clone/Constants/assets_path.dart';
import 'package:govest_clone/Constants/text_path.dart';
import 'package:govest_clone/Screens/InvestmentPack/InvestmentPackage.dart';

class AddBankScreen extends StatefulWidget {
  const AddBankScreen({super.key});

  @override
  State<AddBankScreen> createState() => _AddBankScreenState();
}

class _AddBankScreenState extends State<AddBankScreen> {
  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 600,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(52),
              topRight: Radius.circular(52),
            ),
          ),
          // Content of the bottom sheet
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  title: Padding(
                    padding: EdgeInsets.only(top: 30.sp, left: 40.sp, right: 20.sp),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          GoVestText.ConnetBank,
                          style: TextStyle(
                            color: Color(0xff3B5AFB),
                            fontSize: 22.sp,
                            fontFamily: GoVestAssets.Type,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 15.sp,
                        ),
                        SizedBox(
                            width: 270.sp,
                            child: Text(
                              GoVestText.ProvideUsWith,
                              style: TextStyle(
                                 fontFamily: GoVestAssets.Type,
                                  fontSize: 15.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff414141)),
                            )),
                        SizedBox(
                          height: 20.sp,
                        ),
                        Text(
                          GoVestText.EnterAccountNo,
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                             fontFamily: GoVestAssets.Type,
                              color: Color(0xffc4c4c4)),
                        ),
                        SizedBox(
                          height: 5.sp,
                        ),
                        SizedBox(
                          width: 300,
                          child: TextField(
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              isCollapsed: true,
                              labelText: GoVestText.AccountNo,
                              labelStyle: TextStyle(
                                color: Color(0xff3B5AFB),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w500,
                                fontFamily: GoVestAssets.Type
                              ),
                              filled: true,
                              fillColor: Color(0xffFFFFFF),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide:
                                    BorderSide(color: Color(0xff6E6E71), width: 1),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.sp,),
                        Text(
                          GoVestText.SelectBank,
                          style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w400,
                             fontFamily: GoVestAssets.Type,
                              color: Color(0xffc4c4c4)),
                        ),
                        SizedBox(
                          height: 5.sp,
                        ),
                        SizedBox(
                          width: 300,
                          child: TextField(
                            keyboardType: TextInputType.multiline,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              isCollapsed: true,
                              labelText: GoVestText.SelectBank,
                              labelStyle: TextStyle(
                                color: Color(0xff3B5AFB),
                                fontSize: 14.0,
                                fontFamily: GoVestAssets.Type,
                                fontWeight: FontWeight.w500,
                              ),
                              filled: true,
                              fillColor: Color(0xffFFFFFF),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.r),
                                borderSide:
                                    BorderSide(color: Color(0xff6E6E71), width: 1.sp),
                              ),
                              suffixIcon: Icon(Icons.expand_more),
                            ),
                          ),
                        ),
                        SizedBox(height: 35.sp),
                        Container(
                                height: 60.sp,
                                width: 300.sp,
                                decoration: BoxDecoration(
                    color: Color(0xff3B5AFB),
                    borderRadius: BorderRadius.circular(4.r)
                                ),
                                child: Center(child: Text(GoVestText.VERIFYACCOUNT, style: TextStyle(fontFamily: GoVestAssets.Type, fontSize: 14.sp, fontWeight: FontWeight.w700, color: Color(0xffffffff)),)),
                               ),
                  SizedBox(
                    height: 20.sp,
                  )
                      ],
                    ),
                  ),
                  onTap: () {
                    // Handles Option 1
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3B5AFB),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding:EdgeInsets.only(left:20.sp, right: 20.sp, top: 30.sp),
            child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (BuildContext context)=>InvestmentScreeen())
                        );
                      },
                      child: Icon(Icons.chevron_left, color: Color(0xffffffff), size: 30.sp)),
                    SizedBox(
                      height: 20.sp,
                    ),
                    SizedBox(
                      width: 200.sp,
                      child: Text(
                        GoVestText.ConnectCard_bank,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 24.sp,
                          fontFamily: GoVestAssets.Type,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    GestureDetector(
                      onTap: () {
                      _showBottomSheet(context);
                      },
                      child: Container(
                        height: 150.sp,
                        width: 352.sp,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(7.r),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 66),
                              child: Text(
                                GoVestText.AddBankDetails,
                                style: TextStyle(
                                    fontFamily: GoVestAssets.Type,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff3B5AFB)),
                              ),
                            ),
                            SizedBox(
                              height: 10.sp,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 20.sp,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Image.asset(GoVestAssets.Card, color: Color(0xff3B5AFB),),
                                  Padding(
                                    padding: EdgeInsets.only(right: 18.sp),
                                    child: RichText(
                                      text: TextSpan(
                                        style: TextStyle(
                                          fontSize: 10.sp,
                                          fontFamily: GoVestAssets.Type,
                                          height: 2.2.sp,
                                        ),
                                        children: [
                                          TextSpan(
                                            text:
                                               GoVestText.WhenyouInitiateWithdrawal,
                                            style: TextStyle(
                                              color: Color(0xff979797),
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                          TextSpan(
                                            text:
                                               GoVestText.Before1hr,
                                            style: TextStyle(
                                              color: Color(0xff979797),
                                              fontWeight: FontWeight.w700,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    // Second Container
                    SizedBox(
                      height: 20.sp,
                    ),
                    GestureDetector(
                      onTap: () {
                      _showBottomSheet(context);
                      },
                      child: Container(
                        height: 150.sp,
                        width: 352.sp,
                        decoration: BoxDecoration(
                          color: Color(0xffffffff),
                          borderRadius: BorderRadius.circular(7.r),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 25,
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 66.sp, top: 10.sp),
                              child: Text(
                                GoVestText.AddDebitCard,
                                style: TextStyle(
                                   fontFamily: GoVestAssets.Type,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff0EB51F)),
                              ),
                            ),
                            SizedBox(
                              height: 10.sp,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 20.sp,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(GoVestAssets.CardVec, color: Color(0xff0EB51F),),
                                  SizedBox(
                                    width: 10.sp,
                                  ),
                                  SizedBox(
                                    width: 250.sp,
                                    child: Text(
                                      GoVestText.WeDont,
                                      style: TextStyle(
                                        color: Color(0xff979797),
                                        fontWeight: FontWeight.w400,
                                       fontFamily: GoVestAssets.Type,
                                        height: 1.5.sp,
                                        fontSize: 10.sp,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.sp,
                    ),
                    // Third Container
                    Container(
                      height: 150.sp,
                      width: 352.sp,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(7.r),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                               GoVestText.Lukman,
                                style: TextStyle(
                                    fontFamily: GoVestAssets.Type,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff3B5AFB)),
                              ),
                              SizedBox(
                                height: 15.sp,
                              ),
                              Text(
                                GoVestText.FirstBankDetails,
                                style: TextStyle(
                                  fontFamily: GoVestAssets.Type,
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff3B5AFB)),
                              ),
                            ],
                          ),
                          Icon(Icons.fingerprint,
                              color: Color(0xff3B5AFB), size: 50.sp)
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 220.sp),
                      child: Text(
                       GoVestText.EditBankDetails,
                        style: TextStyle(
                            fontFamily: GoVestAssets.Type,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffffffff)),
                      ),
                    ),
                    SizedBox(
                      height: 20.sp,
                    ),
                    Container(
                      height: 150.sp,
                      width: 352.sp,
                      decoration: BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.circular(7.r),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20.sp),
                                child: Text(
                                  GoVestText.Lukman,
                                  style: TextStyle(
                                     fontFamily: GoVestAssets.Type,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff3B5AFB)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 20.sp),
                                child: Text(
                                  GoVestText.twelve22,
                                  style: TextStyle(
                                       fontFamily: GoVestAssets.Type,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff3B5AFB)),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15.sp,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(left: 20.sp),
                                child: Text(
                                  GoVestText.Hidden,
                                  style: TextStyle(
                                     fontFamily: GoVestAssets.Type,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff3B5AFB)),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: 20.sp),
                                child: Text(
                                 GoVestText.FirstBank,
                                  style: TextStyle(
                                      fontFamily: GoVestAssets.Type,
                                      fontSize: 12.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff3B5AFB)),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 5.sp,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 260.sp),
                      child: Text(
                       GoVestText.EditCard,
                        style: TextStyle(
                             fontFamily: GoVestAssets.Type,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffffffff)),
                      ),
                    ),
                  ],
                ),
          ),
          ),
      ),
    );
  }
}