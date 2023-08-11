import 'package:flutter/material.dart';
import 'package:flutter_project_social_media/pages/1.loading_page.dart';

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
          displayLarge: const TextStyle(
            fontFamily: 'GB',
            color: Color(0xffFFFFFF),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
          //2
          displayMedium: TextStyle(
            fontFamily: 'GB',
            color: const Color(0xffFFFFFF).withOpacity(0.3),
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
          //3
          titleLarge: const TextStyle(
            fontFamily: 'GB',
            color: Color(0xffFFFFFF),
            fontSize: 14,
            fontWeight: FontWeight.w700,
          ),

          //4
          titleMedium: const TextStyle(
            fontFamily: 'GB',
            color: Color(0xffFFFFFF),
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
          //5
          headlineMedium: const TextStyle(
            fontFamily: 'SM',
            color: Color(0xffFFFFFF),
            fontSize: 12,
            fontWeight: FontWeight.w400,
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
      home: const LoadingPage(),
    );
  }
}
