class ThumbnailModel {
  String path;
  String extension;

  ThumbnailModel({
    required this.path,
    required this.extension,
  });

  factory ThumbnailModel.fromMap(Map<String, dynamic> map) {
    return ThumbnailModel(
      path: map['path'],
      extension: map['extension'],
    );
  }
}
