class SearchInfoModel {
  late String textSnippet;

  SearchInfoModel({
    required this.textSnippet,
  });

  SearchInfoModel.fromJson(Map<String, dynamic>? json) {
    if (json!=null) {
      textSnippet=json["textSnippet"];
    } else{
      print('erorrr11111111111111111111111111');
    }

  }

  Map<String, dynamic> toJson() => {
    "textSnippet": textSnippet,
  };
}
