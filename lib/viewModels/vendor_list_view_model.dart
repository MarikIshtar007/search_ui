import 'package:flutter/material.dart';
import 'package:search_ui/models/vendor.dart';
import 'package:search_ui/services/web_services.dart';
import 'package:search_ui/viewModels/vendor_view_model.dart';
import 'package:search_ui/widgets/top_vendor_tile.dart';

enum LoadingState {
  completed,
  searching,
  empty,
}

class VendorListViewModel extends ChangeNotifier {
  LoadingState loadingState = LoadingState.empty;
  List<TopVendorTile> topVendors = [];

  void getVendors() {
    List<Vendor> vendors = WebService().fetchTopVendors();

    List<VendorViewModel> vendorList =
        vendors.map((vendor) => VendorViewModel(vendor: vendor)).toList();

    this.topVendors = vendorList.map((vendor) {
      return TopVendorTile(
        name: vendor.name,
        designation: vendor.designation,
        photoUrl: vendor.photoUrl,
      );
    }).toList();

    if (this.topVendors.isEmpty) {
      this.loadingState = LoadingState.empty;
    } else {
      this.loadingState = LoadingState.completed;
    }
  }
}
