class EpubModel {
  late bool isAvailable;
  String? acsTokenLink;

  EpubModel({
    required this.isAvailable,
    this.acsTokenLink,
  });

  EpubModel.fromJson(Map<String, dynamic>? json)
  {
    if (json != null) {
      isAvailable= json["isAvailable"];
      acsTokenLink= json["acsTokenLink"];
    }
    else {
      print('erorrrrrrrr33333333333');
    }
  }

  Map<String, dynamic> toJson() => {
    "isAvailable": isAvailable,
    "acsTokenLink": acsTokenLink,
  };
}
