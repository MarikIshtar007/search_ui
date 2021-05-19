import 'package:flutter/material.dart';

class SearchOptionTile extends StatelessWidget {
  final String title;
  final Function function;

  const SearchOptionTile(
      {Key? key, required this.title, required this.function});
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5.0),
      child: Container(
        padding: EdgeInsets.all(10),
        height: 50,
        width: MediaQuery.of(context).size.width * 0.4,
        margin: EdgeInsets.only(bottom: 6, right: 10, left: 10, top: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                offset: Offset(0.0, 1.0),
                blurRadius: 5.0,
              )
            ]),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.search_rounded,
              color: Colors.grey[700],
            ),
            SizedBox(width: 10),
            Text(
              title,
              style: TextStyle(
                  color: Colors.grey[800], fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
