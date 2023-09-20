import 'package:bookly/features/home/data/models/sale_info_listPrice_model.dart';

import 'offer_model.dart';

// class SaleInfoModel {
//   late String country;
//   late String saleability;
//   late bool isEbook;
//    SaleInfoListPriceModel? listPrice;
//    SaleInfoListPriceModel? retailPrice;
//    String? buyLink;
//    List<OfferModel>? offers;
//
//   SaleInfoModel({
//     required this.country,
//     required this.saleability,
//     required this.isEbook,
//     this.listPrice,
//     this.retailPrice,
//     this.buyLink,
//     this.offers,
//   });
//
//   SaleInfoModel.fromJson(Map<String, dynamic>? json){
//     if (json!=null) {
//       country= json["country"];
//       saleability= json["saleability"];
//       isEbook= json["isEbook"];
//       listPrice= SaleInfoListPriceModel.fromJson(json["listPrice"]);
//       retailPrice= SaleInfoListPriceModel.fromJson(json["retailPrice"]);
//       buyLink= json["buyLink"];
//       offers= List<OfferModel>.from(json["offers"].map((x) => OfferModel.fromJson(x)));
//     } else{
//       print('erorrr101010101010010101010');
//     }
//   }
//
//   Map<String, dynamic> toJson() => {
//     "country": country,
//     "saleability": saleability,
//     "isEbook": isEbook,
//     "listPrice": listPrice!.toJson(),
//     "retailPrice": retailPrice!.toJson(),
//     "buyLink": buyLink,
//     "offers": List<dynamic>.from(offers!.map((x) => x.toJson())),
//   };
// }


class SaleInfoModel {
  late String country;
  late String saleability;
  late bool isEbook;
  SaleInfoListPriceModel? listPrice;
  SaleInfoListPriceModel? retailPrice;
  String? buyLink;
  List<OfferModel>? offers;

  SaleInfoModel({
    required this.country,
    required this.saleability,
    required this.isEbook,
    this.listPrice,
    this.retailPrice,
    this.buyLink,
    this.offers,
  });

  SaleInfoModel.fromJson(Map<String, dynamic>? json) {
    if (json!=null) {
      country=json["country"];
      saleability= json["saleability"];
      isEbook= json["isEbook"];
      listPrice= json["listPrice"] == null ? null : SaleInfoListPriceModel.fromJson(json["listPrice"]);
      retailPrice= json["retailPrice"] == null ? null : SaleInfoListPriceModel.fromJson(json["retailPrice"]);
      buyLink= json["buyLink"];
      offers= json["offers"] == null ? [] : List<OfferModel>.from(json["offers"]?.map((x) => OfferModel.fromJson(x))??[]);
    }else{
      print('sale info erorrrrrr');
    }
  }

  Map<String, dynamic> toJson() => {
    "country": country,
    "saleability": saleability,
    "isEbook": isEbook,
    "listPrice": listPrice?.toJson(),
    "retailPrice": retailPrice?.toJson(),
    "buyLink": buyLink,
    "offers": offers == null ? [] : List<dynamic>.from(offers?.map((x) => x.toJson())??[]),
  };
}