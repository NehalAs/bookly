class PanelizationSummaryModel {
  late bool containsEpubBubbles;
  late bool containsImageBubbles;

  PanelizationSummaryModel({
    required this.containsEpubBubbles,
    required this.containsImageBubbles,
  });

  PanelizationSummaryModel.fromJson(Map<String, dynamic>? json){
    if (json!=null) {
      containsEpubBubbles= json["containsEpubBubbles"];
      containsImageBubbles= json["containsImageBubbles"];
    } else{
      print('erorrr77777777777777777777');
    }
  }

  Map<String, dynamic> toJson() => {
    "containsEpubBubbles": containsEpubBubbles,
    "containsImageBubbles": containsImageBubbles,
  };
}
