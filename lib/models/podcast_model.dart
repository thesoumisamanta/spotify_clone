class PodcastModel {
  final String imgPath;
  final String podcast;

  PodcastModel({required this.imgPath, required this.podcast});

  Map<String, dynamic> toMap() {
    return {
      'imgPath': imgPath,
      'podcast': podcast,
    };
  }
}
