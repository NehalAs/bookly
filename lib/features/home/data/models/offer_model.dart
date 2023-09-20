import 'offer_list_price_model.dart';

class OfferModel {
  late int finskyOfferType;
  late OfferListPriceModel listPrice;
  late OfferListPriceModel retailPrice;

  OfferModel({
    required this.finskyOfferType,
    required this.listPrice,
    required this.retailPrice,
  });

  OfferModel.fromJson(Map<String, dynamic>? json) {
    if (json!=null) {
      finskyOfferType=json["finskyOfferType"];
      listPrice= OfferListPriceModel.fromJson(json["listPrice"]);
      retailPrice= OfferListPriceModel.fromJson(json["retailPrice"]);
    }else{
      print('erorfromoffeeerrrrrrrrrrrr');
    }
  }

  Map<String, dynamic> toJson() => {
    "finskyOfferType": finskyOfferType,
    "listPrice": listPrice.toJson(),
    "retailPrice": retailPrice.toJson(),
  };
}
