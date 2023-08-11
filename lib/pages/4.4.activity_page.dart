import 'package:flutter/material.dart';
import 'package:flutter_project_social_media/data/constants.dart';
import 'package:flutter_project_social_media/model/classes/activity_repot_class.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

TabController? _tabController;

class _ActivityPageState extends State<ActivityPage> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1C1F2E),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Column(
              children: [
                _getTabBar(context),
                const SizedBox(
                  height: 32,
                ),
                Expanded(
                  child: _getTabBarView(context),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget _getTabBar(context) {
  return Container(
    height: 66,
    alignment: Alignment.bottomCenter,
    child: TabBar(
      controller: _tabController,
      labelStyle: Theme.of(context).textTheme.displayLarge,
      indicatorPadding: const EdgeInsets.symmetric(horizontal: 17),
      indicatorColor: const Color(0xffF35383),
      indicatorWeight: 2,
      tabs: const [
        Tab(
          text: 'Following',
        ),
        Tab(
          text: 'You',
        ),
      ],
    ),
  );
}

Widget _getTabBarView(context) {
  return TabBarView(
    physics: const BouncingScrollPhysics(),
    controller: _tabController,
    children: [
      _getTabBarViewContent(context),
      _getTabBarViewContent(context),
    ],
  );
}

Widget _getTabBarViewContent(context) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 17),
    child: CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'New',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            ((context, index) {
              return _getActivityReport(activityReportList[index]);
            }),
            childCount: 2,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 32,
                ),
                Text(
                  'Today',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            ((context, index) {
              return _getActivityReport(activityReportList[index + 2]);
            }),
            childCount: 3,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 32,
                ),
                Text(
                  'This Week',
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            ((context, index) {
              return _getActivityReport(activityReportList[index + 6]);
            }),
            childCount: 4,
          ),
        ),
      ],
    ),
  );
}

Widget _getActivityReport(ActivityReport activityReport) {
  String reportText = '';
  Widget iconType = const Text('data');
  switch (activityReport.trailingType) {
    case ActivityType.messageType:
      reportText = 'Started following you';
      iconType = OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          elevation: 0,
          minimumSize: const Size(70, 36),
          side: const BorderSide(
            width: 2,
            color: Color(0xffC5C5C5),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: const Text(
          'Message',
          style: TextStyle(
            color: Color(0xffC5C5C5),
            fontFamily: 'GB',
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
      );
      break;

    case ActivityType.followType:
      reportText = 'Started following you';
      iconType = ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          minimumSize: const Size(70, 36),
          side: const BorderSide(
            style: BorderStyle.none,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: const Text(
          'Follow',
          style: TextStyle(
            color: Color(0xffFFFFFF),
            fontFamily: 'GB',
            fontSize: 12,
            fontWeight: FontWeight.w700,
          ),
        ),
      );
      break;

    case ActivityType.pictureType:
      reportText = (activityReport.otherLikesOrFollowers == 0 && activityReport.comment == '')
          ? 'Liked your post'
          : (activityReport.comment == '')
              ? 'and ${activityReport.otherLikesOrFollowers} other liked your post'
              : (activityReport.otherLikesOrFollowers != 0 && activityReport.comment != '')
                  ? 'Error, choose likes and comments separately!'
                  : 'Mentioned you in comment:';
      iconType = Container(
          height: 40,
          width: 40,
          alignment: Alignment.center,
          child: Image.asset('images/7_activity_page/${activityReport.postaddress}.png'));
      break;

    case ActivityType.reportType:
      reportText = (activityReport.otherLikesOrFollowers != 0 && activityReport.comment == '')
          ? 'and ${activityReport.otherLikesOrFollowers} others liked you'
          : (activityReport.otherLikesOrFollowers == 0 && activityReport.comment != '')
              ? 'and ${activityReport.otherLikesOrFollowers} others started following you'
              : (activityReport.otherLikesOrFollowers != 0 && activityReport.comment != '')
                  ? 'Error, choose likes and comments separately!'
                  : 'Mentioned you in comment:';
      iconType = const Spacer();
      break;
  }
  return Column(
    children: [
      SizedBox(
        height: 40,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Visibility(
              maintainAnimation: true,
              maintainState: true,
              maintainSize: true,
              maintainSemantics: true,
              visible: activityReport.isNew,
              child: Image.asset('images/7_activity_page/redDot.png'),
            ),
            const SizedBox(
              width: 7,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset('images/7_activity_page/${activityReport.imageName}.png'),
            ),
            const SizedBox(
              width: 10,
            ),
            Container(
              alignment: Alignment.topLeft,
              width: 230,
              height: 40,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '${activityReport.accountName!}  ',
                      style: const TextStyle(
                        height: 1.6,
                        color: Colors.white,
                        fontFamily: 'GB',
                        fontSize: 12,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: reportText.length < 50 ? '$reportText  ' : '${reportText.substring(0, 42)} ...  ',
                      style: const TextStyle(
                        height: 1.6,
                        color: Color(0xffC5C5C5),
                        fontFamily: 'GM',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: '${activityReport.comment!}  ',
                      style: const TextStyle(
                        height: 1.6,
                        color: Color(0xffFFFFFF),
                        fontFamily: 'GM',
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: activityReport.timeOfEvent,
                      style: const TextStyle(
                        height: 1.6,
                        color: Color(0xffC5C5C5),
                        fontFamily: 'GB',
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Spacer(),
            iconType,
          ],
        ),
      ),
      const SizedBox(
        height: 20,
      ),
    ],
  );
}
