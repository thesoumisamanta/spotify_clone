class PodcastModel {
  final String imgPath;
  final String podcast;
  bool isBlackBg;
  bool isSpotifyOriginal;

  PodcastModel({
      this.imgPath = '', 
      required this.podcast,
      this.isBlackBg = false,
      this.isSpotifyOriginal = false});

  Map<String, dynamic> toMap() {
    return {
      'imgPath': imgPath,
      'podcast': podcast,
    };
  }
}
