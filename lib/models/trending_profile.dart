class TrendingProfile {
  final String name;
  final int likes;
  final String photoUrl;

  TrendingProfile(
      {required this.likes, required this.name, required this.photoUrl});

  factory TrendingProfile.fromJSON(Map<String, dynamic> json) {
    return TrendingProfile(
        name: json['name'], likes: json['likes'], photoUrl: json['photoUrl']);
  }
}
