import 'package:bookly/features/home/data/models/sale_info_model.dart';
import 'package:bookly/features/home/data/models/volume_info_model.dart';
import 'access_info_model.dart';

class BookModel {
  String? kind;
  String? id;
  String? etag;
  String? selfLink;
  late VolumeInfoModel volumeInfo;
  late SaleInfoModel saleInfo;
  late AccessInfoModel accessInfo;

  BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    required this.volumeInfo,
    required this.saleInfo,
    required this.accessInfo,
  });

   BookModel.fromJson(Map<String, dynamic>? json){
     if (json != null) {
       kind = json["kind"];
       id = json["id"];
       etag = json["etag"];
       selfLink = json["selfLink"];
       volumeInfo = VolumeInfoModel.fromJson(json["volumeInfo"]);
       saleInfo = SaleInfoModel.fromJson(json["saleInfo"]);
       accessInfo = AccessInfoModel.fromJson(json["accessInfo"]);}
     else{
       print('errrrorrrrrrrrrrrrrrrrrrrrr');
     }
   }

  Map<String, dynamic> toJson() => {
    "kind": kind,
    "id": id,
    "etag": etag,
    "selfLink": selfLink,
    "volumeInfo": volumeInfo.toJson(),
    "saleInfo": saleInfo.toJson(),
    "accessInfo": accessInfo.toJson(),
  };
}












