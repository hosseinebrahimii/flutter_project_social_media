import 'package:flutter_project_social_media/model/classes/activity_repot_class.dart';

List<ActivityReport> activityReportList = [
  ActivityReport(
    isNew: true,
    accountName: 'amirahmadAdibii',
    imageName: 'account1',
    timeOfEvent: '3min',
    trailingType: ActivityType.messageType,
  ),
  ActivityReport(
      isNew: true,
      accountName: 'amirahmadAdibii',
      imageName: 'account1',
      timeOfEvent: '5min',
      trailingType: ActivityType.pictureType,
      postaddress: 'post1'),
  ActivityReport(
    accountName: 'Mahaa.candle',
    imageName: 'account2',
    timeOfEvent: '1h',
    trailingType: ActivityType.followType,
  ),
  ActivityReport(
      accountName: 'Webq.co , Xlance.team',
      imageName: 'account3',
      timeOfEvent: '2h',
      otherLikesOrFollowers: 321,
      trailingType: ActivityType.pictureType,
      postaddress: 'post2'),
  ActivityReport(
    accountName: 'Arash_313_',
    imageName: 'account4',
    timeOfEvent: '2h',
    trailingType: ActivityType.followType,
  ),
  ActivityReport(
    accountName: 'Aliiii_tech',
    imageName: 'account5',
    timeOfEvent: '1d',
    otherLikesOrFollowers: 480,
    trailingType: ActivityType.reportType,
  ),
  ActivityReport(
      accountName: 'Yasin.3aberi , Reza_omri',
      imageName: 'account6',
      timeOfEvent: '2d',
      otherLikesOrFollowers: 666,
      trailingType: ActivityType.pictureType,
      postaddress: 'post2'),
  ActivityReport(
    accountName: 'Abed.kamali',
    imageName: 'account7',
    timeOfEvent: '2d',
    trailingType: ActivityType.messageType,
  ),
  ActivityReport(
    accountName: 'germany.lang',
    imageName: 'account8',
    timeOfEvent: '3d',
    trailingType: ActivityType.followType,
  ),
  ActivityReport(
      accountName: 'sam_karman',
      imageName: 'account9',
      timeOfEvent: '3d',
      comment: 'thanks bro',
      trailingType: ActivityType.pictureType,
      postaddress: 'post1'),
];

List<String> highLightNames = ['New', 'Flutter VIP', 'Support', 'Learning', 'Sale'];
