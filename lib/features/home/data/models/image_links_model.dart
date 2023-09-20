class ImageLinksModel {
  late String? smallThumbnail;
  late String? thumbnail;

  ImageLinksModel({
    required this.smallThumbnail,
    required this.thumbnail,
  });

  ImageLinksModel.fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      smallThumbnail = json["smallThumbnail"];
      thumbnail = json["thumbnail"];
    }
    else {
      print('erorrr444444444444444');
    }
  }

  Map<String, dynamic> toJson() => {
    "smallThumbnail": smallThumbnail??'',
    "thumbnail": thumbnail??'',
  };
}
