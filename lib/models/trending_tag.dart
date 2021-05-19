class TrendingTag {
  final String title;
  final String url;

  TrendingTag({required this.title, required this.url});

  factory TrendingTag.fromJSON(Map<String, dynamic> json) {
    return TrendingTag(
      title: json['title'],
      url: json['url'],
    );
  }
}
