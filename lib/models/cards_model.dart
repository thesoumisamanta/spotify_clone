class CardsModel {
  final String imgPath;
  final String textName;
  bool isBlackBg;
  bool isSpotifyOriginal;

  CardsModel({
    required this.imgPath,
    required this.textName,
    this.isBlackBg = false,
    this.isSpotifyOriginal = false,
  });
}
