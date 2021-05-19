import 'package:flutter/material.dart';

class TrendingTile extends StatelessWidget {
  final String title;
  final String url;

  const TrendingTile({required this.title, required this.url});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('The url of the trending tag is $url');
      },
      child: Container(
        margin: EdgeInsets.all(7),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey, blurRadius: 5, offset: Offset(0, 1)),
            ]),
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
