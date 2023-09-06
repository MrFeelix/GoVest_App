import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_clone/Constants/assets_path.dart';
import 'package:govest_clone/Constants/text_path.dart';
import 'package:govest_clone/Screens/InvestmentPack/InvestmentPackage3.dart';

class BuyInvestmentScreen extends StatefulWidget {
  const BuyInvestmentScreen({super.key});

  @override
  State<BuyInvestmentScreen> createState() => _BuyInvestmentScreenState();
}

class _BuyInvestmentScreenState extends State<BuyInvestmentScreen> {
   bool _switchValue = false;
    void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      backgroundColor: Colors.transparent,
      isDismissible: true,
      context: context,
      builder: (BuildContext context) {
       return Container(
        height: 200,
          decoration: BoxDecoration(
            color: Colors.white,
          ),
       child: Padding(
         padding: const EdgeInsets.only(top:20.0),
         child: Column(
              mainAxisSize: MainAxisSize.min,
          children:<Widget> [
            ListTile(
              title: Container(
                height: 47.sp,
                width: 209.sp,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff0EB51F),),
                  borderRadius: BorderRadius.circular(8)
                ),
                   child: Padding(
                     padding: const EdgeInsets.only(left:20.0),
                     child: Row(
                      children: [
                        Image.asset(GoVestAssets.Wallet2),
                        SizedBox(
                          width: 20,
                        ),
                        Text(GoVestText.WalletBalance, style: TextStyle(fontFamily: GoVestAssets.Type, fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xff0EB51F)),)
                      ],
                     ),
                   ),
              ),
            onTap: () {
                    // Handle option 2
                    Navigator.pop(context);
                  },
            ),
            SizedBox(
              height: 10.sp,
            ),
             ListTile(
              title: Container(
                height: 47.sp,
                width: 209.sp,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff3B5AFB),),
                  borderRadius: BorderRadius.circular(8)
                ),
                   child: Padding(
                     padding: const EdgeInsets.only(left:20.0),
                     child: Row(
                      children: [
                        Image.asset(GoVestAssets.CardVec),
                        SizedBox(
                          width: 20,
                        ),
                        Text(GoVestText.PaystackwithCard, style: TextStyle(fontFamily: GoVestAssets.Type, fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xff3B5AFB)),)
                      ],
                     ),
                   ),
              ),
            onTap: () {
                    // Handle option 2
                    Navigator.pop(context);
                  },
            )
          ],
         ),
       ),
       );

      });}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.sp,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (BuildContext context)=>InvestmentPackage3())
                    );
                  },
                  child: Image.asset(
                    GoVestAssets.Cancel,
                    color: Color(0xff3B5AFB),
                  ),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Row(
                  children: [
                    Container(
                      height: 35.sp,
                      width: 35.sp,
                      decoration: BoxDecoration(
                          color: Color(0xff3B5AFB).withOpacity(0.3),
                          borderRadius: BorderRadius.circular(50)),
                      child: Icon(
                        Icons.lock,
                        color: Color(0xff3B5AFB),
                      ),
                    ),
                    SizedBox(
                      width: 20.sp,
                    ),
                    Text(
                      GoVestText.CashewInvest,
                      style: TextStyle(
                          fontFamily: GoVestAssets.Type,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff3B5AFB)),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.sp,
                ),
                Container(
                  height: 158.sp,
                  width: 329.sp,
                  decoration: BoxDecoration(
                      color: Color(0xff3B5AFB),
                      borderRadius: BorderRadius.circular(7)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          GoVestText.LeadwayAssurancetext,
                          style: TextStyle(
                              fontFamily: GoVestAssets.Type,
                              fontWeight: FontWeight.w700,
                              fontSize: 12,
                              color: Color(0xffFFFFFF)),
                        ),
                        SizedBox(
                          height: 20.sp,
                        ),
                        Container(
                          height: 1.sp,
                          width: MediaQuery.of(context).size.width / 1.2,
                          decoration: BoxDecoration(
                              color: Color(0xffFFFFFF).withOpacity(0.25)),
                        ),
                        SizedBox(
                          height: 20.sp,
                        ),
                        Text(GoVestText.Note,
                            style: TextStyle(
                                fontFamily: GoVestAssets.Type,
                                fontWeight: FontWeight.w700,
                                fontSize: 12,
                                color: Color(0xffFFFFFF)))
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 30.sp,
                ),
                Text(
                  GoVestText.HowmanyUnits,
                  style: TextStyle(
                      fontFamily: GoVestAssets.Type,
                      fontSize: 14,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff979797)),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Text(
                  GoVestText.Five,
                  style: TextStyle(
                      fontFamily: GoVestAssets.Type,
                      fontWeight: FontWeight.w700,
                      fontSize: 22),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Container(
                  height: 2.sp,
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration: BoxDecoration(color: Color(0xff000000)),
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
                      GoVestText.NumberofUnitstoBuy,
                      style: TextStyle(
                          fontFamily: GoVestAssets.Type,
                          fontWeight: FontWeight.w500,
                          fontSize: 12),
                    )
                  ],
                ),
                SizedBox(
                  height: 35.sp,
                ),
                Container(
                  height: 2.sp,
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration:
                      BoxDecoration(color: Color(0xff000000).withOpacity(0.3)),
                ),
                SizedBox(
                  height: 15.sp,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      GoVestText.TotalInvestment,
                      style: TextStyle(
                        fontFamily: GoVestAssets.Type,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff979797),
                      ),
                    ),
                    Text(
                      GoVestText.TotalInvestment_Return,
                      style: TextStyle(
                        fontFamily: GoVestAssets.Type,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff979797),
                      ),
                    )
                  ],
                ),
                  SizedBox(
                  height: 15.sp,
                ),
              Row(
                children: [
                  Image.asset(GoVestAssets.BlackNaira),
                  Text(GoVestText.Amount11, style: TextStyle(fontFamily: GoVestAssets.Type, fontWeight: FontWeight.w700, fontSize: 14),),
             Spacer(),
               Row(
                children: [
                   Image.asset(GoVestAssets.BlackNaira),
                  Text(GoVestText.Amount12, style: TextStyle(fontFamily: GoVestAssets.Type, fontWeight: FontWeight.w700, fontSize: 14),),
                ],
               ),
                ],
              ),
              SizedBox(
                height:15.sp,
              ),
                Container(
                  height: 2.sp,
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration:
                      BoxDecoration(color: Color(0xff000000).withOpacity(0.2)),
                ),
                SizedBox(
                  height: 20.sp,
                ),
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(GoVestText.SelectSource,style: TextStyle(fontFamily: GoVestAssets.Type, fontWeight: FontWeight.w700, fontSize: 14, color: Color(0xff979797),),) ,
             SizedBox(
              height: 15.0,
             ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(GoVestText.WalletBalance,style: TextStyle(fontFamily: GoVestAssets.Type, fontWeight: FontWeight.w700, fontSize: 16, color: Color(0xff000000),),),
                Icon( Icons.keyboard_arrow_down, size: 45, color: Color(0xff979797),),
      
              ],
             )
              ],
             ),
             SizedBox(
              height: 5.sp,
             ),
             Container(
                  height: 2.sp,
                  width: MediaQuery.of(context).size.width / 1.1,
                  decoration:
                      BoxDecoration(color: Color(0xff000000)),
                ),
             
             SizedBox(
              height: 20,
             ),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Container(
                height: 30.sp,
                width: 55.sp,
                decoration: BoxDecoration(
                  color: Color(0xff3B5AFB),
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Switch(
                              value: _switchValue,
                              onChanged: (value) {
                                setState(() {
                                  _switchValue = value;
                                });
                              },
                            ), 
               ),
             SizedBox(
              width: 300,
              child: Text(GoVestText.Authorize,style: TextStyle(fontFamily: GoVestAssets.Type, fontWeight: FontWeight.w500, fontSize: 13, color: Color(0xff000000),),))
              ],
             ),
             SizedBox(
              height: 30,
             ),
             GestureDetector(
              onTap: () {
                  _showBottomSheet(context);
              },
               child: Container(
                          height: 50.sp,
                          width: 354.sp,
                          decoration: BoxDecoration(color: Color(0xff3B5AFB),
                          borderRadius: BorderRadius.circular(10)),
                          child: Center(
                            child: Text(
                              GoVestText.BuyInvestment,
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
