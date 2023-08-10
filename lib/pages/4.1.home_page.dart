import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_project_social_media/pages/4.2.home_page_direct_bottomsheet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _getAppBar(),
        backgroundColor: const Color(0xff1C1F2E),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: _getStoryList(),
            ),
            SliverToBoxAdapter(
              child: ElevatedButton(
                onPressed: (() {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    barrierColor: Colors.transparent,
                    builder: ((context) {
                      return Padding(
                        padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: DraggableScrollableSheet(
                          maxChildSize: 0.75,
                          initialChildSize: 0.5,
                          builder: (context, scrollController) => getBottomSheetContent(scrollController),
                        ),
                      );
                    }),
                  );
                }),
                child: const Text('Show BottomSheet'),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(((context, index) {
                return _getPostWidget(context);
              }), childCount: 30),
            ),
          ],
        ),
      ),
    );
  }

  AppBar _getAppBar() {
    return AppBar(
      toolbarHeight: 75,
      titleSpacing: 17,
      title: Container(
        height: 25,
        width: 128,
        alignment: Alignment.center,
        child: Image.asset('images/logo.png'),
      ),
      elevation: 0,
      backgroundColor: const Color(0xff1C1F2E),
      actions: [
        Image.asset('images/appBarIcon.png'),
      ],
    );
  }

  Widget _getStoryList() {
    return SizedBox(
      height: 87,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          if (index == 0) {
            return _getStoryWidget(
              pictureAddress: 'images/plus.png',
              title: 'Your Story',
              borderColor: const Color(0xffFFFFFF),
            );
          } else {
            return _getStoryWidget(
              pictureAddress: 'images/storyPicture1.png',
              title: 'text',
            );
          }
        },
      ),
    );
  }

  Widget _getStoryWidget({
    required String pictureAddress,
    required String title,
    Color borderColor = const Color(0xffF35383),
    double size = 64,
    double borderRaduis = 17,
  }) {
    return Row(
      children: [
        const SizedBox(
          width: 17,
        ),
        Column(
          children: [
            _getPictureDecoration(
                pictureAddress: pictureAddress, size: size, borderRaduis: borderRaduis, borderColor: borderColor),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: const TextStyle(
                fontFamily: 'GM',
                fontSize: 10,
                fontWeight: FontWeight.w600,
                color: Color(0xffFFFFFF),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 3,
        ),
      ],
    );
  }

  Widget _getPictureDecoration({
    required String pictureAddress,
    Color borderColor = const Color(0xffF35383),
    double size = 64,
    double borderRaduis = 17,
  }) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: borderColor,
        borderRadius: BorderRadius.circular(borderRaduis),
      ),
      child: Container(
        width: size - 4,
        height: size - 4,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: const Color(0xff1C1F2E),
          borderRadius: BorderRadius.circular(borderRaduis - 2),
          image: DecorationImage(image: AssetImage(pictureAddress)),
        ),
      ),
    );
  }

  Widget _getPostWidget(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          _getPostHeader(context),
          const SizedBox(
            height: 23,
          ),
          _getPostBody(context),
        ],
      ),
    );
  }

  Widget _getPostHeader(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _getPictureDecoration(pictureAddress: 'images/amirahmad.png', size: 44, borderRaduis: 12),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'amirahmadadibii',
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              'امیر احمد ادیبی برنامه نویس موبایل',
              style: Theme.of(context).textTheme.headline1,
            ),
          ],
        ),
        const Spacer(),
        Image.asset('images/3dots.png'),
      ],
    );
  }

  Widget _getPostBody(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Image.asset(
          'images/englishForProgrammersPost.png',
        ),
        Positioned(
          top: 15,
          right: 15,
          child: Image.asset('images/play.png'),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 365,
          ),
          child: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
              child: Container(
                width: 340,
                height: 46,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                      Color.fromRGBO(255, 255, 255, 0.5),
                      Color.fromRGBO(255, 255, 255, 0.2),
                    ],
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, top: 10),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            children: [
                              Image.asset('images/like.png'),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                '2.6 K',
                                style: Theme.of(context).textTheme.headline2,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Row(
                            children: [
                              Image.asset('images/comment.png'),
                              const SizedBox(
                                width: 6,
                              ),
                              Text(
                                '1.5 K',
                                style: Theme.of(context).textTheme.headline2,
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 40,
                          ),
                          Image.asset('images/direct.png'),
                          const SizedBox(
                            width: 54,
                          ),
                          Image.asset('images/savePost.png'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
