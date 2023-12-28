class SupportModel {
  String? url, text;

  SupportModel({this.url, this.text});

  factory SupportModel.mapToModel(Map m1) {
    return SupportModel(
      url: m1['url'],
      text: m1['text'],
    );
  }
}
