import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/screens/meditation_screen.dart';

class WorldMap extends StatelessWidget {
  const WorldMap({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => MeditationScreen()));
      },
      child: Container(
        child: Column(
          children: [
            Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "56 875",
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(fontSize: 40.sp),
                    ),
                    SizedBox(
                      width: 12.w,
                    ),
                    Column(
                      children: [
                        Text(
                          '''People are meditating \nright now''',
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(
                                  color: Colors.black, fontSize: 14.sp),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/world.png", fit: BoxFit.cover,)
              ],
            ),
          ],
        ),
        height: 250.h,
        width: double.infinity.w,
        margin: EdgeInsets.only(
            left: 15.w, right: 15.w, bottom: 15.w, top: 0),
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
      ),
    );
  }
}