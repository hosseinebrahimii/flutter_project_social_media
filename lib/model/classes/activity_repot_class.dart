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
    isNew = false,
    required imageName,
    required accountName,
    required trailingType,
    required timeOfEvent,
    otherLikesOrFollowers = 0,
    comment = '',
    postaddress = 'plus',
  }) {
    this.isNew = isNew;
    this.imageName = imageName;
    this.accountName = accountName;
    this.trailingType = trailingType;
    this.timeOfEvent = timeOfEvent;
    this.otherLikesOrFollowers = otherLikesOrFollowers;
    this.comment = comment;
    this.postaddress = postaddress;
  }
}
