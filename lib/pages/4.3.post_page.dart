import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C1F2E),
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 17,
              right: 17,
              child: _getTopPageContent(context),
            ),
            Positioned(
              top: 83,
              bottom: 68,
              left: 17,
              right: 17,
              child: _getGridViewContent(),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: _getBottomPageContent(),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _getTopPageContent(context) {
  return Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      const SizedBox(
        height: 37,
      ),
      Row(
        children: [
          Text(
            'Post',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(
            width: 15,
          ),
          Image.asset('images/6_post_page/downVector.png'),
          const Spacer(),
          Text(
            'Next',
            style: Theme.of(context).textTheme.displayLarge,
          ),
          const SizedBox(
            width: 15,
          ),
          Image.asset('images/6_post_page/nextIcon.png'),
        ],
      ),
      const SizedBox(
        height: 33,
      ),
    ],
  );
}

Widget _getGridViewContent() {
  return GridView.custom(
    physics: const BouncingScrollPhysics(),
    gridDelegate: SliverQuiltedGridDelegate(
      crossAxisCount: 3,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      repeatPattern: QuiltedGridRepeatPattern.mirrored,
      pattern: [
        const QuiltedGridTile(3, 3),
        const QuiltedGridTile(1, 1),
        const QuiltedGridTile(1, 1),
        const QuiltedGridTile(1, 1),
        const QuiltedGridTile(1, 1),
        const QuiltedGridTile(1, 1),
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
              'images/6_post_page/staggeredGridView${index + 1}.png',
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      childCount: 10,
    ),
  );
}

Widget _getBottomPageContent() {
  return Container(
    decoration: const BoxDecoration(
      color: Color(0xff272B40),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(15),
        topRight: Radius.circular(15),
      ),
    ),
    height: 68,
    alignment: Alignment.topCenter,
    padding: const EdgeInsets.symmetric(horizontal: 17, vertical: 10),
    child: const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Draft',
          style: TextStyle(
            fontFamily: 'GB',
            fontSize: 16,
            color: Color(0xffF35383),
          ),
        ),
        Text(
          'Gallery',
          style: TextStyle(
            fontFamily: 'GB',
            fontSize: 16,
            color: Color(0xffFFFFFF),
          ),
        ),
        Text(
          'Take',
          style: TextStyle(
            fontFamily: 'GB',
            fontSize: 16,
            color: Color(0xffFFFFFF),
          ),
        ),
      ],
    ),
  );
}
