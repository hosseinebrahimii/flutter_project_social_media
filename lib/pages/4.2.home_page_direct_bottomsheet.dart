import 'dart:ui';
import 'package:flutter/material.dart';

Widget getBottomSheetContent(ScrollController scrollController) {
  return ClipRRect(
    borderRadius: const BorderRadius.only(
      topLeft: Radius.circular(36),
      topRight: Radius.circular(36),
    ),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
      child: Container(
        height: 500,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color.fromRGBO(255, 255, 255, 0.5),
              Color.fromRGBO(255, 255, 255, 0.2),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 44, right: 44),
          child: _getContents(scrollController),
        ),
      ),
    ),
  );
}

Widget _getContents(ScrollController scrollController) {
  return CustomScrollView(
    controller: scrollController,
    slivers: [
      SliverToBoxAdapter(
        child: Column(
          children: [
            Image.asset('images/Home Indicator.png'),
            const SizedBox(
              height: 22,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Share',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'GB',
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                Image.asset(
                  'images/bottomSheetShare.png',
                ),
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(13),
              child: Container(
                height: 46,
                width: 340,
                color: Colors.white.withOpacity(0.4),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Row(
                    children: [
                      Image.asset('images/searchIcon.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search ...',
                            hintStyle: TextStyle(
                                fontFamily: 'GB', fontSize: 12, fontWeight: FontWeight.bold, color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
      SliverGrid(
        delegate: SliverChildBuilderDelegate(((context, index) {
          return _getBottomSheetProfile(context,
              pictureAddress: 'images/accountpicture.png', profileName: 'Your Story');
        }), childCount: 100),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, crossAxisSpacing: 20, mainAxisSpacing: 20, mainAxisExtent: 100),
      ),
    ],
  );
}

Widget _getBottomSheetProfile(
  BuildContext context, {
  required String profileName,
  required String pictureAddress,
}) {
  return Column(
    children: [
      Container(
        width: 60,
        height: 60,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.asset(
            pictureAddress,
          ),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      Text(
        profileName,
        style: Theme.of(context).textTheme.headline6,
        textAlign: TextAlign.center,
      ),
    ],
  );
}
