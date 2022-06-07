// Trying to make custom app bar for issue problem


// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:meditation_app/screens/mediation_play.dart';

// class MeditationScreen2 extends StatefulWidget {
//   const MeditationScreen2({super.key});

//   @override
//   State<MeditationScreen2> createState() => _MeditationScreen2State();
// }

// class _MeditationScreen2State extends State<MeditationScreen2> {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;

//     return Scaffold(
//       body: Column(
//         children: [
//           Stack(
//             children: [
//               ClipPath(
//                 clipper: CurveImage(),
//                 child: Container(
//                   width: double.infinity.w,
//                   height: 280.h,
//                   decoration: BoxDecoration(color: Colors.greenAccent),
//                   child: Container(
//                     width: double.infinity.w,
//                     height: 300.h,
//                     decoration: BoxDecoration(
//                       image: DecorationImage(
//                           fit: BoxFit.fill,
//                           image: AssetImage("assets/images/waterfall.jpg"),
//                           opacity: 0.2),
//                     ),
//                   ),
//                 ),
//               ),
//               Positioned(
//                 top: 250.h,
//                 left: 40.w,
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(40),
//                     boxShadow: [
//                     BoxShadow(
//                       color: Colors.white.withOpacity(0.5),
//                       spreadRadius: 5,
//                       blurRadius: 2,
//                       offset: Offset(0, 1),
//                     ),
//                   ]),
//                   child: CircleAvatar(
//                     radius: 40,
//                     backgroundColor: Colors.white,
//                     child: CircleAvatar(
//                       radius: 40,
//                       child: Icon(
//                         Icons.star,
//                         color: Colors.green,
//                         size: 50,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
