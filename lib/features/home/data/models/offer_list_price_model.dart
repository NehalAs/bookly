class OfferListPriceModel {
  late int amountInMicros;
  late String currencyCode;

  OfferListPriceModel({
    required this.amountInMicros,
    required this.currencyCode,
  });

  OfferListPriceModel.fromJson(Map<String, dynamic>? json) {
    if (json != null) {
      amountInMicros=json["amountInMicros"];
      currencyCode= json["currencyCode"];
    }
    else{
      print('erorrr6666666666666666');
    }
  }

  Map<String, dynamic> toJson() => {
    "amountInMicros": amountInMicros,
    "currencyCode": currencyCode,
  };
}
