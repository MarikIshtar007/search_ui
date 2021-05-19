import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';
import 'package:search_ui/viewModels/vendor_list_view_model.dart';

class TopVendorsWidget extends StatefulWidget {
  @override
  _TopVendorsWidgetState createState() => _TopVendorsWidgetState();
}

class _TopVendorsWidgetState extends State<TopVendorsWidget> {
  @override
  void initState() {
    super.initState();
    Provider.of<VendorListViewModel>(context, listen: false).getVendors();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var listViewModel = Provider.of<VendorListViewModel>(context);
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: width,
        height: height * 0.22,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Top Vendors',
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
                itemCount: listViewModel.topVendors.length,
                itemBuilder: (context, index) =>
                    listViewModel.topVendors[index],
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
