import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:search_ui/viewModels/trending_profile_list_view_model.dart';

class TrendingProfilesWidget extends StatefulWidget {
  @override
  _TrendingProfilesWidgetState createState() => _TrendingProfilesWidgetState();
}

class _TrendingProfilesWidgetState extends State<TrendingProfilesWidget> {
  @override
  void initState() {
    super.initState();
    Provider.of<TrendingProfileListViewModel>(context, listen: false)
        .getTrendingProfiles();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var listViewModel = Provider.of<TrendingProfileListViewModel>(context);
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: width,
        height: height * 0.22,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Trending Profiles',
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Expanded(
              child: StaggeredGridView.countBuilder(
                crossAxisCount: 2,
                scrollDirection: Axis.horizontal,
                itemCount: listViewModel.trendingProfiles.length,
                itemBuilder: (context, index) =>
                    listViewModel.trendingProfiles[index],
                staggeredTileBuilder: (int index) {
                  return StaggeredTile.count(1, 2.5);
                },
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
              ),
            )
          ],
        ));
  }
}
