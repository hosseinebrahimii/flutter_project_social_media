import 'package:flutter/material.dart';
import 'package:flutter_project_social_media/pages/0.main_page.dart';

void main() {
  runApp(const Application());
}

class Application extends StatefulWidget {
  const Application({super.key});

  @override
  State<Application> createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          //5
          headline1: const TextStyle(
            fontFamily: 'SM',
            color: Color(0xffFFFFFF),
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
          //3
          headline2: const TextStyle(
            fontFamily: 'GB',
            color: Color(0xffFFFFFF),
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),
          //1
          // headline3: const TextStyle(
          //   fontFamily: 'GB',
          //   color: Color(0xffFFFFFF),
          //   fontSize: 20,
          //   fontWeight: FontWeight.w700,
          // ),
          //2
          headline4: const TextStyle(
            fontFamily: 'GB',
            color: Color(0xffFFFFFF),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
          //2
          headline5: TextStyle(
            fontFamily: 'GB',
            color: const Color(0xffFFFFFF).withOpacity(0.3),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
          //4
          headline6: const TextStyle(
            fontFamily: 'GB',
            color: Color(0xffFFFFFF),
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(
              fontFamily: 'GB',
              color: Color(0xffFFFFFF),
              fontSize: 16,
              fontWeight: FontWeight.w700,
            ),
            backgroundColor: const Color(0xffF35383),
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            side: const BorderSide(
              width: 2,
              color: Colors.white,
            ),
            textStyle: const TextStyle(
              fontSize: 16,
              fontFamily: 'GB',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: const MainPage(),
    );
  }
}
