class character_info {
  String name;
  String ssDirection;
  String imgLocation;
  bool oneBreak;
  bool twoBreak;
  bool onePlusTwoBreak;
   character_info({required this.name, required this.ssDirection,
     required this.imgLocation, required this.oneBreak,
     required this.twoBreak, required this.onePlusTwoBreak});

  String get getName => name;

  get getImgLocation => imgLocation;
}