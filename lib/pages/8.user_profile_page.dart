import 'package:flutter/material.dart';
import 'package:flutter_project_social_media/data/constants.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class UserProfilePage extends StatefulWidget {
  const UserProfilePage({super.key});

  @override
  State<UserProfilePage> createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C1F2E),
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: NestedScrollView(
            headerSliverBuilder: ((context, innerBoxIsScrolled) {
              return _getHeader(context);
            }),
            body: _getBody(context),
          ),
        ),
      ),
    );
  }
}

List<Widget> _getHeader(context) {
  return [
    SliverAppBar(
      expandedHeight: 173,
      backgroundColor: Colors.transparent,
      actions: const [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 17,
            vertical: 32,
          ),
          child: Icon(
            Icons.menu_rounded,
            size: 30,
          ),
        )
      ],
      bottom: PreferredSize(
        preferredSize: const Size(double.infinity, 14),
        child: Container(
          height: 14,
          decoration: const BoxDecoration(
            color: Color(0xff1C1F2E),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
          ),
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Image.asset(
          'images/8_user_profile_page/appBarImage.png',
          fit: BoxFit.cover,
        ),
      ),
    ),
    SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      sliver: SliverToBoxAdapter(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _getBio(),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 46,
                  width: 180,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: Theme.of(context).elevatedButtonTheme.style,
                    child: const Text('Follow'),
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                SizedBox(
                  height: 46,
                  width: 180,
                  child: OutlinedButton(
                    onPressed: (() {}),
                    style: Theme.of(context).outlinedButtonTheme.style,
                    child: const Text('Message'),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            _getHighLight(),
          ],
        ),
      ),
    ),
  ];
}

Widget _getBody(context) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 17),
    child: Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        _getTabBar(),
        const SizedBox(
          height: 20,
        ),
        _getTabBarView(),
      ],
    ),
  );
}

Widget _getBio() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _getProfileImage(),
          const SizedBox(
            width: 15,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Text(
                'امیراحمد برنامه نویس موبایل',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontFamily: 'SM',
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'amirahmadAdibii',
                style: TextStyle(
                  fontFamily: 'GB',
                  color: Color(0xffC5C5C5),
                  fontSize: 12,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          const Spacer(),
          Image.asset('images/8_user_profile_page/edit.png'),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      const SizedBox(
        height: 64,
        width: 195,
        child: Text(
          'برنامه نویس فلاتر و آندروید، مدرس محبوبترین دوره مکتبخونه و برنامه نویس سابق زرین پال تخصص برنامه نویسی یعنی آینده و تاثیر گذاری ' +
              '👇 آموزش رایگان',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontFamily: 'SM',
            color: Colors.white,
            fontSize: 10,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      const SizedBox(
        height: 5,
      ),
      Row(
        children: [
          Image.asset('images/8_user_profile_page/link.png'),
          const SizedBox(
            width: 5,
          ),
          const Text(
            'yek.link/Amirahmad',
            style: TextStyle(
              fontFamily: 'GB',
              color: Color(0xff55B9F7),
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 10,
      ),
      Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('images/8_user_profile_page/bag.png'),
          const SizedBox(
            width: 5,
          ),
          const Text(
            'developer',
            style: TextStyle(
              fontFamily: 'GB',
              color: Color(0xffC5C5C5),
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Image.asset('images/8_user_profile_page/location.png'),
          const SizedBox(
            width: 5,
          ),
          const Text(
            'IRAN',
            style: TextStyle(
              fontFamily: 'GB',
              color: Color(0xffC5C5C5),
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
      const SizedBox(
        height: 15,
      ),
      const Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '23',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'GB',
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Posts',
            style: TextStyle(
              color: Color(0xffC5C5C5),
              fontFamily: 'GM',
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            '16.2K',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'GB',
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Followers',
            style: TextStyle(
              color: Color(0xffC5C5C5),
              fontFamily: 'GM',
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            '280',
            style: TextStyle(
              color: Colors.white,
              fontFamily: 'GB',
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            'Following',
            style: TextStyle(
              color: Color(0xffC5C5C5),
              fontFamily: 'GM',
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    ],
  );
}

Widget _getProfileImage() {
  return Container(
    height: 70,
    width: 70,
    decoration: BoxDecoration(
      border: Border.all(
        color: const Color(0xffF35383),
        width: 2,
      ),
      borderRadius: BorderRadius.circular(17),
    ),
    padding: const EdgeInsets.all(2.5),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(14.5),
      child: Image.asset(
        'images/8_user_profile_page/accountpicture.png',
        fit: BoxFit.cover,
      ),
    ),
  );
}

Widget _getHighLight() {
  return SizedBox(
    height: 86,
    child: ListView.builder(
      itemCount: 5,
      scrollDirection: Axis.horizontal,
      itemBuilder: ((context, index) {
        return Row(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 60,
                  width: 60,
                  child: (index == 0)
                      ? Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(width: 2, color: Colors.white),
                          ),
                          child: Image.asset('images/8_user_profile_page/highLight0.png'),
                        )
                      : Image.asset('images/8_user_profile_page/highLight$index.png'),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  highLightNames[index],
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'GM',
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        );
      }),
    ),
  );
}

Widget _getTabBar() {
  return TabBar(
    labelPadding: const EdgeInsets.only(bottom: 17),
    indicatorColor: const Color(0xffF35383),
    tabs: [
      Image.asset('images/8_user_profile_page/tab1.png'),
      Image.asset('images/8_user_profile_page/tab2.png'),
    ],
  );
}

Widget _getTabBarView() {
  return Expanded(
    child: TabBarView(
      children: [
        GridView.custom(
          physics: const BouncingScrollPhysics(),
          gridDelegate: SliverQuiltedGridDelegate(
            crossAxisCount: 3,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            repeatPattern: QuiltedGridRepeatPattern.inverted,
            pattern: [
              const QuiltedGridTile(1, 1),
              const QuiltedGridTile(2, 2),
              const QuiltedGridTile(1, 1),
            ],
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(index == 0 ? 15 : 10), color: Colors.red),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(index == 0 ? 15 : 10),
                  child: Image.asset(
                    'images/8_user_profile_page/staggeredGridPicture${index + 1}.png',
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            childCount: 3,
          ),
        ),
        GridView.custom(
          physics: const BouncingScrollPhysics(),
          gridDelegate: SliverQuiltedGridDelegate(
            crossAxisCount: 3,
            mainAxisSpacing: 5,
            crossAxisSpacing: 5,
            repeatPattern: QuiltedGridRepeatPattern.inverted,
            pattern: [
              const QuiltedGridTile(1, 1),
              const QuiltedGridTile(2, 2),
              const QuiltedGridTile(1, 1),
            ],
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (context, index) {
              return Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(index == 0 ? 15 : 10), color: Colors.red),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(index == 0 ? 15 : 10),
                  child: Image.asset(
                    'images/8_user_profile_page/staggeredGridPicture${index + 1}.png',
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
            childCount: 3,
          ),
        ),
      ],
    ),
  );
}
