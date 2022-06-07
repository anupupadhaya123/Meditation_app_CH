import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/screens/meditation_screen.dart';

class SignUpCart extends StatelessWidget {
  const SignUpCart({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Create an account',
            style: Theme.of(context).textTheme.headline4,
          ),
          Text(
            '''You'll be able to track and save \nyour progress''',
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(color: Colors.black, fontWeight: FontWeight.normal),
          ),
          SizedBox(
            height: 60.h,
            width: 200.w,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(shape: StadiumBorder()),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder :(context) => MeditationScreen(),));
              },
              child: Text(
                "Sign Up",
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(color: Colors.white, fontSize: 25.sp),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Already have an account? ',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  TextSpan(
                    text: 'Log in ',
                    style: Theme.of(context).textTheme.headline5!.copyWith(
                          fontSize: 14.sp,
                          color: Colors.blue,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      height: 250.h,
      width: double.infinity.w,
      margin: EdgeInsets.only(left: 15.w, right: 15.w, bottom: 15.w, top: 0),
      padding: EdgeInsets.all(13.h),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 1),
            ),
          ]
          ),
    );
  }
}

class CustomAvatar extends StatelessWidget {
  const CustomAvatar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 48.sp,
      backgroundColor: Colors.white,
      child: CircleAvatar(
        radius: 46.sp,
        backgroundImage: AssetImage("assets/images/anup.JPG"),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: CircleAvatar(
                radius: 13.sp,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 10.sp,
                  child: Icon(
                    Icons.edit,
                    color: Colors.black,
                    size: 14,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
