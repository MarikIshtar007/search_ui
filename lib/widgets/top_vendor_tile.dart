import 'package:flutter/material.dart';

class TopVendorTile extends StatelessWidget {
  final String name;
  final String designation;
  final String photoUrl;

  const TopVendorTile(
      {required this.name, required this.designation, required this.photoUrl});
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      margin: EdgeInsets.only(left: 5),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage(photoUrl),
            minRadius: 25,
          ),
          SizedBox(
            width: width * 0.04,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Text(
                designation,
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey[700],
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ],
      ),
    );
  }
}
