class IndustryIdentifierModel {
  late String type;
  late String identifier;

  IndustryIdentifierModel({
    required this.type,
    required this.identifier,
  });

  IndustryIdentifierModel.fromJson(Map<String, dynamic>? json){
    if (json != null) {
      type = json["type"];
      identifier = json["identifier"];
    }
    else{
      print('erorrrrrrrrrrr555555555555555');
    }
  }

  Map<String, dynamic> toJson() => {
    "type": type,
    "identifier": identifier,
  };
}
