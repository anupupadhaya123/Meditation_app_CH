import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation_app/config/custom_appbar_shape.dart';
import 'package:meditation_app/widgets/signup.dart';
import 'package:meditation_app/widgets/worldmap.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 280.h,
        backgroundColor: Colors.transparent,
        elevation: 0,
        // title: Text("Custom Appbar"),
        flexibleSpace: ClipPath(
          clipper: CustomShape(),
          child: Container(
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/images/mountain.jpg",
                    ),
                    fit: BoxFit.cover,
                    opacity: 0.1,
                  )),
              height: 300.h,
              width: double.infinity.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomAvatar(),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text("Anup Upadhaya",
                      style: Theme.of(context)
                          .textTheme
                          .headline4!
                          .copyWith(color: Colors.white)),
                  SizedBox(
                    height: 5.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Level:".toUpperCase(),
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(color: Colors.white),
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Icon(
                        Icons.check_circle_outline,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      Text(
                        "Intermediate",
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  )
                ],
              )),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          
          children: [
            SignUpCart(),
            WorldMap(),
            
          ],
        ),
      ),
    );
  }
}



