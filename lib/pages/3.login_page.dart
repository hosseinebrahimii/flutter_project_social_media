import 'package:flutter/material.dart';
import 'package:flutter_project_social_media/pages/4.0.main_page.dart';
//NOTICE:
//this is just UI, so don't expect auth systems to work her
//i just added a simple way of login to show the loginPage.

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  FocusNode focusGuardEmail = FocusNode();
  FocusNode focusGuardPassword = FocusNode();
  var emailTextEditingController = TextEditingController(text: '');
  var passwordTextEditingController = TextEditingController(text: '');

  @override
  void initState() {
    focusGuardEmail.addListener(() {
      setState(() {});
    });
    focusGuardPassword.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(50, 58, 153, 1),
            Color.fromRGBO(249, 139, 252, 1),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          alignment: Alignment.topCenter,
          children: [
            Positioned(
              left: 0,
              right: 0,
              top: 50,
              bottom: 0,
              child: _getImage(),
            ),
            _getPageData(),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    focusGuardEmail.dispose();
    focusGuardPassword.dispose();
  }

  Widget _getImage() {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/rocket.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(),
        ),
      ],
    );
  }

  Widget _getPageData() {
    return Column(
      children: [
        Expanded(
          child: Container(),
        ),
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              color: Color(0xff1C1F2E),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Sign in to ',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    const Image(
                      image: AssetImage('images/minilogo.png'),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 36,
                ),
                TextField(
                  focusNode: focusGuardEmail,
                  controller: emailTextEditingController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    labelText: ' Email ',
                    labelStyle: TextStyle(
                      fontFamily: 'GM',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: focusGuardEmail.hasFocus ? const Color(0xffF35383) : const Color(0xffC5C5C5),
                    ),
                    constraints: const BoxConstraints(maxHeight: 46, maxWidth: 340),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        width: 3,
                        color: Color(0xffC5C5C5),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        width: 3,
                        color: Color(0xffF35383),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                TextField(
                  obscureText: true,
                  focusNode: focusGuardPassword,
                  controller: passwordTextEditingController,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                    labelText: ' Password ',
                    labelStyle: TextStyle(
                      fontFamily: 'GM',
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: focusGuardPassword.hasFocus ? const Color(0xffF35383) : const Color(0xffC5C5C5),
                    ),
                    constraints: const BoxConstraints(maxHeight: 46, maxWidth: 340),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        width: 3,
                        color: Color(0xffC5C5C5),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15),
                      borderSide: const BorderSide(
                        width: 3,
                        color: Color(0xffF35383),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                SizedBox(
                  height: 46,
                  width: 129,
                  child: ElevatedButton(
                    onPressed: () {
                      if (emailTextEditingController.text == 'test123@gmail.com' &&
                          passwordTextEditingController.text == 'thisIsJustUI') {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const MainPage(),
                          ),
                        );
                      }
                    },
                    style: Theme.of(context).elevatedButtonTheme.style,
                    child: const Text(
                      'sign in',
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t have an account? /',
                      style: Theme.of(context).textTheme.displayMedium,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Sign up',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
