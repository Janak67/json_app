class PhotoModel {
  int? albumId, id;
  String? title, url, thumbnailUrl;

  PhotoModel({
    this.albumId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl,
  });

  factory PhotoModel.mapToModel(Map m1) {
    return PhotoModel(
      id: m1['id'],
      albumId: m1['albumId'],
      title: m1['title'],
      url: m1['url'],
      thumbnailUrl: m1['thumbnailUrl'],
    );
  }
}
