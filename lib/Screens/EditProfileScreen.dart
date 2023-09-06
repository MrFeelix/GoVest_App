import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:govest_clone/Constants/assets_path.dart';
import 'package:govest_clone/Constants/text_path.dart';
import 'package:govest_clone/Screens/Myprofile.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Color(0xff3B5AFB)),
        child: Padding(
           padding: EdgeInsets.only(left:20.sp, right: 20.sp, top:30.sp),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (BuildContext context)=>MyProfileScreen())
                );
              },
              child: Icon(
                Icons.chevron_left,
                size: 40,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20.sp,
            ),
            Center(child: Image.asset(GoVestAssets.Person3)),
            SizedBox(
              height: 10.sp,
            ),
            Center(
              child: Text(
                GoVestText.Ganni,
                style: TextStyle(
                    fontSize: 14.sp,
                    fontFamily: GoVestAssets.Type,
                    fontWeight: FontWeight.w700,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 10.sp,
            ),
            Center(
              child: Container(
                height: 25.sp,
                width: 110.sp,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        GoVestText.ChangeAvatar,
                        style: TextStyle(
                          fontSize: 10.sp,
                           fontFamily: GoVestAssets.Type,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff3B5AFB),
                        ),
                      ),
                      Icon(
                        Icons.edit, // Use the edit icon from the Icons class
                        size: 15.sp, // Icon size
                        color: Color(0xff3B5AFB), // Icon color
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 40.sp,
            ),
            EditTextfield(name: "Email"),
            SizedBox(
              height: 15.sp,
            ),
            EditTextfield(name: "Username"),
            SizedBox(
              height: 15.sp,
            ),
            EditTextfield(name: "Phone Number"),
            SizedBox(
              height: 15.sp,
            ),
            EditTextfield(name: "Date of Birth"),
            SizedBox(
              height: 70.sp,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 46.sp,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text(
                  "Save Changes",
                  style: TextStyle(fontSize: 14.sp, color: Color(0xff3B5AFB),
                   fontFamily: GoVestAssets.Type,),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
              ],
            ),
          ),
        ),
          ),
      ),
    );
  }
}
class EditTextfield extends StatelessWidget {
  const EditTextfield({
    super.key,
    required this.name,
  });

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: name,
          hintStyle: TextStyle(color: Color(0xff979797),
           fontFamily: GoVestAssets.Type,),
          border: InputBorder.none,
          contentPadding: EdgeInsets.all(10),
        ),
      ),
    );
  }
}