import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meditation_app/config/theme.dart';
import 'package:meditation_app/screens/home_page.dart';
import 'package:meditation_app/screens/mediation_play.dart';
import 'package:meditation_app/screens/meditation_screen.dart';
import 'package:meditation_app/screens/meditation_screen2.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375,812),
      builder: (context,child) =>  MaterialApp(
        title: 'Meditation App',
        theme: lightTheme,
        themeMode: ThemeMode.light,
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
        
      ),
      
    );
  }
}


