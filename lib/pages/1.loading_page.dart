import 'package:flutter/material.dart';
import 'package:flutter_project_social_media/pages/2.switch_account_page.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState() {
    super.initState();
    loadingNextPage();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xff1C1F2E),
        image: DecorationImage(
          image: AssetImage('images/pattern 1.png'),
          repeat: ImageRepeat.repeat,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Center(
                child: Image(
                  image: AssetImage('images/Startlogo.png'),
                  width: 155.81,
                  height: 77,
                ),
              ),
              Positioned(
                bottom: 32,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'From',
                      style: TextStyle(
                        color: const Color(0xffFFFF4D).withOpacity(0.3),
                      ),
                    ),
                    const Text(
                      'Expertflutter',
                      style: TextStyle(
                        color: Color(0xff55B9F7),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void loadingNextPage() {
    Future.delayed(
      const Duration(seconds: 1),
      () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const SwitchAccountPage(),
          ),
        );
      },
    );
  }
}
