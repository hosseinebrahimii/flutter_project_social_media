enum ActivityType { messageType, followType, pictureType, reportType }

class ActivityReport {
  bool isNew = false;
  String? imageName;
  String? accountName;
  ActivityType trailingType = ActivityType.reportType;
  String? timeOfEvent;
  int? otherLikesOrFollowers = 0;
  String? comment = '';
  String? postaddress = 'plus';
  ActivityReport({
    this.isNew = false,
    required this.imageName,
    required this.accountName,
    required this.trailingType,
    required this.timeOfEvent,
    this.otherLikesOrFollowers = 0,
    this.comment = '',
    this.postaddress = 'plus',
  });
}
