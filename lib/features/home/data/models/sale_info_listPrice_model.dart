class SaleInfoListPriceModel {
  late double amount;
  late String currencyCode;

  SaleInfoListPriceModel({
    required this.amount,
    required this.currencyCode,
  });

  SaleInfoListPriceModel.fromJson(Map<String, dynamic>? json) {
    if (json!=null) {
      amount= json["amount"]?.toDouble();
      currencyCode= json["currencyCode"];
    } else{
      print('erorrr9999999999999999999999999999999');
    }
  }

  Map<String, dynamic> toJson() => {
    "amount": amount,
    "currencyCode": currencyCode,
  };
}
