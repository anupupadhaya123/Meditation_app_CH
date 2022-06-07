import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/config/custom_appbar_shape.dart';
import 'package:meditation_app/screens/mediation_play.dart';

class MeditationScreen extends StatefulWidget {
  const MeditationScreen({super.key});

  @override
  State<MeditationScreen> createState() => _MeditationScreenState();
}

class _MeditationScreenState extends State<MeditationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   // title: Text("Meditation on Emotions"),
        //   centerTitle: true,
        //   leading: Icon(Icons.arrow_back),
        //   actions: [Icon(Icons.search)],
        //   shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.vertical(bottom: Radius.circular(80))),
        //   bottom: PreferredSize(
        //     preferredSize: Size.fromHeight(200),
        //     child: SizedBox(),
        //   ),
        //   flexibleSpace: ClipPath(
        //     child: Stack(
        //       children: [
        //         Container(
        //             decoration: BoxDecoration(
        //                 borderRadius:
        //                     BorderRadius.vertical(bottom: Radius.circular(80)),
        //                 color: Colors.greenAccent,
        //                 image: DecorationImage(
        //                   image: AssetImage(
        //                     "assets/images/waterfall.jpg",
        //                   ),
        //                   fit: BoxFit.cover,
        //                   opacity: 0.1,
        //                 )),
        //             height: 300.h,
        //             width: double.infinity.w,
        //             child: Column(
        //               mainAxisAlignment: MainAxisAlignment.center,
        //               children: [
        //                 Text("Meditation on \nEmotions",
        //                     textAlign: TextAlign.center,
        //                     style: Theme.of(context)
        //                         .textTheme
        //                         .headline4!
        //                         .copyWith(color: Colors.white)),
        //               ],
        //             )
        //             ),
        //         Positioned(
        //             top: 240.h,
        //             left: 30.w,
        //             child: CircleAvatar(
        //               radius: 30,
        //               backgroundColor: Colors.white,
        //               child: CircleAvatar(
        //                 radius: 25,
        //                 child: Icon(
        //                   Icons.star,
        //                   color: Colors.green,
        //                   size: 40,
        //                 ),
        //               ),
        //             )),
        //         Positioned(
        //             top: 250.h,
        //             left: 160.w,
        //             child: CircleAvatar(
        //               radius: 30,
        //               backgroundColor: Colors.white,
        //               child: CircleAvatar(
        //                 radius: 25,
        //                 child: Icon(
        //                   Icons.star,
        //                   color: Colors.green,
        //                   size: 40,
        //                 ),
        //               ),
        //             )),
        //         Positioned(
        //             top: 240.h,
        //             left: 290.w,
        //             child: CircleAvatar(
        //               radius: 30,
        //               backgroundColor: Colors.white,
        //               child: CircleAvatar(
        //                 radius: 25,
        //                 child: Icon(
        //                   Icons.star,
        //                   color: Colors.green,
        //                   size: 40,
        //                 ),
        //               ),
        //             )),
        //       ],
        //     ),
        //   ),
        // ),

        appBar: AppBar(
          toolbarHeight: 300.h,
          backgroundColor: Colors.transparent,
          elevation: 0,
          
          flexibleSpace: ClipPath(
            clipper: CustomShape(),
            child: Stack(
              children: [
                Container(
                    decoration: BoxDecoration(
                        color: Colors.greenAccent,
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/waterfall.jpg",
                          ),
                          fit: BoxFit.cover,
                          opacity: 0.1,
                        )),
                    height: 320.h,
                    width: double.infinity.w,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Meditation on \nEmotions",
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(color: Colors.white)),
                      ],
                    )),
                Positioned(
                    top: 240.h,
                    left: 30.w,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 25,
                        child: Icon(
                          Icons.star,
                          color: Colors.green,
                          size: 40,
                        ),
                      ),
                    )),
                Positioned(
                    top: 250.h,
                    left: 160.w,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 25,
                        child: Icon(
                          Icons.star,
                          color: Colors.green,
                          size: 40,
                        ),
                      ),
                    )),
                Positioned(
                    top: 240.h,
                    left: 290.w,
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 25,
                        child: Icon(
                          Icons.star,
                          color: Colors.green,
                          size: 40,
                        ),
                      ),
                    )),
              ],
            ),
          ),

        ),

        body: SingleChildScrollView(
            child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.timer,
                color: Colors.grey,
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                "12 min",
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(color: Colors.grey, fontSize: 15.sp),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "About",
                  style: Theme.of(context).textTheme.headline4,
                ),
                Text(
                    '''dataEt rebum sit gubergren dolore ipsum, voluptua eirmod erat invidunt et, dolor duo et ipsum est accusam. Eos diam sit.''')
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.all(15.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                CircleAvatar(
                  radius: 40,
                  child: Icon(
                    Icons.person_add_alt,
                    size: 40,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  width: 5.h,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Anup Upadhaya",
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    Text(
                        '''Talented meditative instrutor with \ndeep scientific knowledge''')
                  ],
                ),
                Icon(
                  Icons.smart_toy_outlined,
                  size: 40,
                ),
              ],
            ),
          ),
          Divider(),
          Padding(
            padding: EdgeInsets.all(15.h),
            child: Row(
              children: [
                Text(
                  "You may like",
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.h, right: 15.h, bottom: 15.h),
            child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    MayLike(),
                    MayLike(),
                    MayLike(),
                  ],
                )),
          ),
        ])));
  }
}

class MayLike extends StatelessWidget {
  const MayLike({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder :(context) => MeditationPlay(),));
      },
      child: Container(
        height: 150.h,
        width: 150.w,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Theme.of(context).primaryColorLight),
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  height: 150.h,
                  width: double.infinity,
                  decoration: BoxDecoration(color: Colors.green),
                  child: Container(
                    height: 150.h,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                              "assets/images/mount.jpg",
                            ),
                            fit: BoxFit.cover,
                            opacity: 0.5)),
                  ),
                ),
                Positioned(
                    left: 10,
                    top: 15,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                        margin: EdgeInsets.all(8),
                        child: Icon(
                          Icons.lock,
                          size: 20.h,
                          color: Colors.white,
                        ),
                      ),
                    )),
                Positioned(
                    right: 10,
                    top: 10,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.white),
                              borderRadius: BorderRadius.circular(10)),
                          margin: EdgeInsets.all(8),
                          child: Center(
                            child: Text("New",
                                style: Theme.of(context)
                                    .textTheme
                                    .headline5!
                                    .copyWith(color: Colors.white)),
                          )),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
