class Vendor {
  final String name;
  final String designation;
  final String photoUrl;

  Vendor(
      {required this.name, required this.designation, required this.photoUrl});

  factory Vendor.fromJSON(Map<String, dynamic> json) {
    return Vendor(
        name: json['name'],
        designation: json['name'],
        photoUrl: json['photoUrl']);
  }
}
