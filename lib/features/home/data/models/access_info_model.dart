import 'epub_Model.dart';

class AccessInfoModel{
  String? country;
  String? viewability;
  late bool embeddable;
  late bool publicDomain;
  String? textToSpeechPermission;
  late EpubModel epub;
  late EpubModel pdf;
  String? webReaderLink;
  String? accessViewStatus;
  late bool quoteSharingAllowed;

  AccessInfoModel({
    this.country,
    this.viewability,
    required this.embeddable,
    required this.publicDomain,
    this.textToSpeechPermission,
    required this.epub,
    required this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    required this.quoteSharingAllowed,
  });

  AccessInfoModel.fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      country= json["country"];
      viewability= json["viewability"];
      embeddable= json["embeddable"];
      publicDomain= json["publicDomain"];
      textToSpeechPermission= json["textToSpeechPermission"];
      epub= EpubModel.fromJson(json["epub"]);
      pdf= EpubModel.fromJson(json["pdf"]);
      webReaderLink= json["webReaderLink"];
      accessViewStatus= json["accessViewStatus"];
      quoteSharingAllowed= json["quoteSharingAllowed"];
    }
    else{
      print('erorrrrrrrrrrr2222222222222');
    }
  }

  Map<String, dynamic> toJson() => {
    "country": country,
    "viewability": viewability,
    "embeddable": embeddable,
    "publicDomain": publicDomain,
    "textToSpeechPermission": textToSpeechPermission,
    "epub": epub.toJson(),
    "pdf": pdf.toJson(),
    "webReaderLink": webReaderLink,
    "accessViewStatus": accessViewStatus,
    "quoteSharingAllowed": quoteSharingAllowed,
  };
}
