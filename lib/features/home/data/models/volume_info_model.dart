import 'package:bookly/features/home/data/models/panelization_summary_model.dart';
import 'package:bookly/features/home/data/models/reading_modes_model.dart';
import 'image_links_model.dart';
import 'industry_identifier_model.dart';

class VolumeInfoModel {
  late String? title;
  String? subtitle;
  late List<String>? authors;
  late String? publisher;
  late String? publishedDate;
  late String? description;
  late List<IndustryIdentifierModel>? industryIdentifiers;
  late ReadingModesModel readingModes;
  late int? pageCount;
  late String? printType;
  late List<String>? categories;
  late String? maturityRating;
  late bool allowAnonLogging;
  late String? contentVersion;
  late PanelizationSummaryModel panelizationSummary;
  late ImageLinksModel imageLinks;
  late String? language;
  late String? previewLink;
  late String? infoLink;
  late String? canonicalVolumeLink;
  double? averageRating;
  int? ratingsCount;

  VolumeInfoModel({
    required this.title,
    this.subtitle,
    required this.authors,
    required this.publisher,
    required this.publishedDate,
    required this.description,
    required this.industryIdentifiers,
    required this.readingModes,
    required this.pageCount,
    required this.printType,
    required this.categories,
    required this.maturityRating,
    required this.allowAnonLogging,
    required this.contentVersion,
    required this.panelizationSummary,
    required this.imageLinks,
    required this.language,
    required this.previewLink,
    required this.infoLink,
    required this.canonicalVolumeLink,
    this.averageRating,
    this.ratingsCount,
  });

  VolumeInfoModel.fromJson(Map<String, dynamic>? json){
    if (json!=null) {
      title= json["title"];
      subtitle= json["subtitle"];
      authors= List<String>.from(json["authors"]?.map((x) => x)??[]);
      publisher= json["publisher"];
      publishedDate= json["publishedDate"];
      description= json["description"];
      industryIdentifiers= List<IndustryIdentifierModel>.from(
          json["industryIdentifiers"]?.map((x) =>
              IndustryIdentifierModel.fromJson(x))??[]);
      readingModes= ReadingModesModel.fromJson(json["readingModes"]);
      pageCount= json["pageCount"];
      printType= json["printType"];
      categories= List<String>.from(json["categories"]?.map((x) => x)??[]);
      maturityRating= json["maturityRating"];
      allowAnonLogging= json["allowAnonLogging"];
      contentVersion= json["contentVersion"];
      panelizationSummary= PanelizationSummaryModel.fromJson(
          json["panelizationSummary"]);
      imageLinks= ImageLinksModel.fromJson(json["imageLinks"]);
      language= json["language"];
      previewLink= json["previewLink"];
      infoLink= json["infoLink"];
      canonicalVolumeLink= json["canonicalVolumeLink"];
      averageRating= json["averageRating"]?.toDouble();
      ratingsCount= json["ratingsCount"];
    } else{
      print('erorrr121212121212121212121212');
    }
  }

  Map<String, dynamic> toJson() => {
    "title": title,
    "subtitle": subtitle,
    "authors": List<dynamic>.from(authors?.map((x) => x)??[]),
    "publisher": publisher,
    "publishedDate":publishedDate,
    "description": description,
    "industryIdentifiers": List<dynamic>.from(industryIdentifiers?.map((x) => x.toJson())??[]),
    "readingModes": readingModes.toJson(),
    "pageCount": pageCount,
    "printType": printType,
    "categories": List<dynamic>.from(categories?.map((x) => x)??[]),
    "maturityRating": maturityRating,
    "allowAnonLogging": allowAnonLogging,
    "contentVersion": contentVersion,
    "panelizationSummary": panelizationSummary.toJson(),
    "imageLinks": imageLinks.toJson(),
    "language": language,
    "previewLink": previewLink,
    "infoLink": infoLink,
    "canonicalVolumeLink": canonicalVolumeLink,
    "averageRating": averageRating,
    "ratingsCount": ratingsCount,
  };
}
