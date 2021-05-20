class MasterClass {
  final String title;
  final int price;
  final String photoUrl;
  final String dates;
  final String timings;

  MasterClass(
      {required this.title,
      required this.price,
      required this.photoUrl,
      required this.dates,
      required this.timings});

  factory MasterClass.fromJSON(Map<String, dynamic> json) {
    return MasterClass(
      title: json['title'],
      price: json['price'],
      photoUrl: json['photoUrl'],
      dates: json['dates'],
      timings: json['timings'],
    );
  }
}
