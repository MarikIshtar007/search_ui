import 'package:flutter/material.dart';

class MasterClassTile extends StatelessWidget {
  final String title;
  final int price;
  final String dates;
  final String timings;
  final String photoUrl;

  const MasterClassTile(
      {required this.title,
      required this.price,
      required this.dates,
      required this.timings,
      required this.photoUrl});
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
        ),
        margin: EdgeInsets.only(right: 10),
        height: height * 0.18,
        width: width * 0.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              flex: 2,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        image: DecorationImage(
                            image: AssetImage(photoUrl), fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    bottom: 2.0,
                    child: Container(
                      padding: EdgeInsets.only(bottom: 5.0, left: 10.0),
                      alignment: Alignment.bottomLeft,
                      width: width,
                      child: Text(
                        'Rs. $price/- Only',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Flexible(
                flex: 3,
                child: Container(
                  alignment: Alignment.bottomLeft,
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        softWrap: true,
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.calendar_today,
                            color: Colors.redAccent,
                            size: 14,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(dates,
                              style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.access_time_outlined,
                            color: Colors.redAccent,
                            size: 14,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(timings,
                              style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold))
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ));
  }
}
