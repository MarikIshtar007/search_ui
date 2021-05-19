import 'package:flutter/material.dart';
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
    return Container();
  }
}
