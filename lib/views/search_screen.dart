import 'package:flutter/material.dart';

import 'package:search_ui/widgets/search_option_tile.dart';
import 'package:search_ui/widgets/top_vendors.dart';
import 'package:search_ui/widgets/trending_tags.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: Color(0xFFEFF0F2),
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text('Search', style: TextStyle(color: Colors.black)),
          actions: [
            IconButton(
              icon: Icon(Icons.close, color: Colors.black),
              onPressed: () {
                print('Button Pressed');
              },
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: width,
                  height: height * 0.15,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SearchOptionTile(
                            title: 'MasterClass',
                            function: () {},
                          ),
                          SearchOptionTile(
                            title: 'Products',
                            function: () {},
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SearchOptionTile(
                            title: 'Profiles',
                            function: () {},
                          ),
                          SearchOptionTile(
                            title: 'Vendors',
                            function: () {},
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                TrendingTagsWidget(),
                TopVendorsWidget(),
              ],
            ),
          ),
        ));
  }

  @override
  void initState() {
    super.initState();
  }
}
