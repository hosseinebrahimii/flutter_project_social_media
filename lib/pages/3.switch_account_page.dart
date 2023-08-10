import 'dart:ui';
import 'package:flutter/material.dart';

class SwitchAccountPage extends StatelessWidget {
  const SwitchAccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C1F2E),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.fitWidth,
                        image: AssetImage('images/shapes.png'),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 20,
                    child: ClipRect(
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 15,
                          sigmaY: 15,
                        ),
                        child: Container(
                          width: 340,
                          height: 352,
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Color.fromRGBO(255, 255, 255, 0.5),
                                Color.fromRGBO(255, 255, 255, 0.2),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 32,
                              ),
                              const Image(
                                width: 129,
                                height: 129,
                                image: AssetImage('images/accountpicture.png'),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                'Amirahmadadibii',
                                style: Theme.of(context).textTheme.headline4,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              SizedBox(
                                height: 46,
                                width: 129,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: const Text(
                                    'Confirm',
                                  ),
                                  style: Theme.of(context).elevatedButtonTheme.style,
                                ),
                              ),
                              const SizedBox(
                                height: 31,
                              ),
                              Text(
                                'switch account',
                                style: Theme.of(context).textTheme.headline4,
                              ),
                              const SizedBox(
                                height: 31,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 63, top: 145),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Don\'t have an account? /',
                    style: Theme.of(context).textTheme.headline5,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Sign up',
                    style: Theme.of(context).textTheme.headline4,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
