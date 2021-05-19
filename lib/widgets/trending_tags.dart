import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:search_ui/viewModels/trending_tag_list_view_model.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:search_ui/widgets/trending_tag_tile.dart';

class TrendingTagsWidget extends StatefulWidget {
  @override
  _TrendingTagsWidgetState createState() => _TrendingTagsWidgetState();
}

class _TrendingTagsWidgetState extends State<TrendingTagsWidget> {
  @override
  void initState() {
    super.initState();
    Provider.of<TrendingTagListViewModel>(context, listen: false).getTags();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    var listViewModel = Provider.of<TrendingTagListViewModel>(context);
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 10),
      width: width,
      height: height * 0.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Trending Tags',
            style: TextStyle(
                color: Colors.grey[600],
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: StaggeredGridView.countBuilder(
              scrollDirection: Axis.horizontal,
              crossAxisCount: 3,
              itemCount: listViewModel.trendingTags.length,
              itemBuilder: (context, index) {
                String title = listViewModel.trendingTags[index].title;
                String url = listViewModel.trendingTags[index].url;
                return TrendingTile(
                  title: title,
                  url: url,
                );
              },
              staggeredTileBuilder: (int index) {
                int count = listViewModel.trendingTags[index].title.length;
                return StaggeredTile.extent(1, count.toDouble() * 13);
              },
            ),
          )
        ],
      ),
    );
  }
}
