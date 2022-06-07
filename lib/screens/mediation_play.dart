import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MeditationPlay extends StatefulWidget {
  const MeditationPlay({super.key});

  @override
  State<MeditationPlay> createState() => _MeditationPlayState();
}

class _MeditationPlayState extends State<MeditationPlay> {
  double _sliderValue = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Color(0xFF41A066),
        body: SingleChildScrollView(
          child: Column(
            children: [
            Stack(
              children: [
                ClipPath(
                  clipper: CurveImage(),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 600.h,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage("assets/images/plant.jpg"),
                            opacity: 0.3)),
                  ),
                ),
                Positioned(
                    top: 50.h,
                    left: 20.w,
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 25,
                      ),
                    )),
                Positioned(
                    top: 50.h,
                    right: 100.w,
                    child: Icon(Icons.cloud_download_rounded,
                        color: Colors.white, size: 30)),
                Positioned(
                    top: 50.h,
                    right: 60.w,
                    child: Icon(Icons.star_border_outlined,
                        color: Colors.white, size: 30)),
                Positioned(
                    top: 50.h,
                    right: 20.w,
                    child: Icon(Icons.upload_file_outlined,
                        color: Colors.white, size: 30)),
                Positioned(
                  top: 230.h,
                  left: 65.w,
                  child: Text(
                    "Timed Meditation",
                    style: Theme.of(context)
                        .textTheme
                        .headline4!
                        .copyWith(color: Colors.white, fontSize: 30),
                  ),
                ),
                Positioned(
                  top: 270.h,
                  left: 90.w,
                  child: Text(
                    "Self-practice in silence",
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(color: Colors.white, fontSize: 18),
                  ),
                ),
                Positioned(
                  top: 350.h,
                  left: 110.w,
                  child: Card(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.skip_previous_rounded,
                        color: Colors.grey,
                        size: 26,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 350.h,
                  left: 150.w,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Card(
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.play_arrow_outlined,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 350.h,
                  left: 220.w,
                  child: Card(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.skip_next_rounded,
                        color: Colors.grey,
                        size: 26,
                      ),
                    ),
                  ),
                ),
                Positioned(top: 420.h, left: 10.w, child: _progressBar()),
                Positioned(
                  top: 480.h,
                  left: 30.w,
                  child: Row(
                    children: [
                      Icon(
                        Icons.timer,
                        color: Colors.white,
                      ),
                      Text(
                        "2 h 52 min",
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: 480.h,
                  right: 30.w,
                  child: Row(
                    children: [
                      Text(
                        "Forest",
                        style: Theme.of(context)
                            .textTheme
                            .headline5!
                            .copyWith(color: Colors.white),
                      ),
                      Icon(
                        Icons.arrow_drop_down,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ]),
                Padding(
                  padding: EdgeInsets.all(15.sp),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "About",
                        style: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(color: Colors.white, fontSize: 18),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        '''Duo tempor ut et et et invidunt et aliquyam eirmod, ipsum rebum aliquyam ut accusam. Stet sit lorem sed sed.Consetetur ea invidunt lorem diam lorem. Sit eirmod ut et.''',
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(
                        '''Duo tempor ut et et et invidunt et aliquyam eirmod, ipsum rebum aliquyam ut accusam. Stet sit lorem sed sed.Consetetur ea invidunt lorem diam lorem. Sit eirmod ut et.''',
                        style: Theme.of(context).textTheme.headline5!.copyWith(
                            color: Colors.white, fontWeight: FontWeight.normal),
                      ),
                    ],
                  ),
                )
              ],
            
          ),
        ));
  }

  Widget _progressBar() {
    return Container(
      height: 50.w,
      width: 350.h,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.transparent,
          boxShadow: [
            BoxShadow(
              color: Colors.white.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 1),
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            Text(
              "${_sliderValue.toString().split('.')[0]}:00",
              style: const TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
            Expanded(
              child: Slider(
                value: _sliderValue,
                min: 0,
                max: 180,
                inactiveColor: Colors.grey,
                onChanged: (value) {
                  setState(() {
                    _sliderValue = value;
                  });
                },
              ),
            ),
            const Text(
              "180:00",
              style: TextStyle(
                  fontSize: 15,
                  color: Colors.black,
                  fontWeight: FontWeight.w700),
            ),
          ],
        ),
      ),
    );
  }
}

class CurveImage extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30);
    path.quadraticBezierTo(
        size.width / 4, size.height, size.width / 2, size.height);
    path.quadraticBezierTo(size.width - (size.width / 4), size.height,
        size.width, size.height - 30);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
