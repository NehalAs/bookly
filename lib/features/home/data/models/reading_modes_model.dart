class ReadingModesModel {
  late bool text;
  late bool image;

  ReadingModesModel({
    required this.text,
    required this.image,
  });

  ReadingModesModel.fromJson(Map<String, dynamic>? json) {
    if (json!=null) {
      text= json["text"];
      image= json["image"];
    }
    else{
      print('erorrr888888888888888888888888');
    }
  }

  Map<String, dynamic> toJson() => {
    "text": text,
    "image": image,
  };
}
