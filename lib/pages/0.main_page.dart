import 'package:flutter/material.dart';
import 'package:flutter_project_social_media/pages/4.home_page.dart';
import 'package:flutter_project_social_media/pages/5.search_page.dart';
import 'package:flutter_project_social_media/pages/6.post_page.dart';
import 'package:flutter_project_social_media/pages/7.activity_page.dart';
import 'package:flutter_project_social_media/pages/8.user_profile_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

int _getBottomNavigatorBarIndex = 0;

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    //
    //
    return Scaffold(
      extendBody: true,
      backgroundColor: const Color(0xff1C1F2E),
      bottomNavigationBar: SizedBox(
        height: 68,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight: Radius.circular(15),
          ),
          child: _getBottomNavigationBar(),
        ),
      ),
      //
      //
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: IndexedStack(
          index: _getBottomNavigatorBarIndex,
          children: _getBody(),
        ),
      ),
    );
  }

  Widget _getBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _getBottomNavigatorBarIndex,
      onTap: (value) {
        setState(() {
          _getBottomNavigatorBarIndex = value;
        });
      },
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      backgroundColor: const Color(0xff272B40),
      items: [
        BottomNavigationBarItem(
          icon: Image.asset('images/icon_home.png'),
          activeIcon: Image.asset('images/icon_home_active.png'),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('images/icon_search_navigation.png'),
          activeIcon: Image.asset('images/icon_search_navigation_active.png'),
          label: 'Suggestion',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('images/icon_add_navigation.png'),
          activeIcon: Image.asset('images/icon_add_navigation_active.png'),
          label: 'Post',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('images/icon_activity_navigation.png'),
          activeIcon: Image.asset('images/icon_activity_navigation_active.png'),
          label: 'Activity',
        ),
        BottomNavigationBarItem(
          icon: Container(
            height: 26,
            width: 26,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xffC5C5C5),
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4.5),
              child: Image.asset(
                'images/8_user_profile_page/accountpicture.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          activeIcon: Container(
            height: 26,
            width: 26,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xffF35383),
                width: 1.5,
              ),
              borderRadius: BorderRadius.circular(6),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4.5),
              child: Image.asset(
                'images/8_user_profile_page/accountpicture.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          label: 'Account',
        ),
      ],
    );
  }

  List<Widget> _getBody() {
    return const <Widget>[
      HomePage(),
      SearchPage(),
      PostPage(),
      ActivityPage(),
      UserProfilePage(),
    ];
  }
}
