import 'package:flutter/material.dart';
import 'package:search_ui/models/vendor.dart';
import 'package:search_ui/services/web_services.dart';
import 'package:search_ui/viewModels/vendor_view_model.dart';

enum LoadingState {
  completed,
  searching,
  empty,
}

class VendorListViewModel extends ChangeNotifier {
  LoadingState loadingState = LoadingState.empty;
  List<VendorViewModel> topVendors = [];

  void getVendors() {
    List<Vendor> vendors = WebService().fetchTopVendors();

    this.topVendors =
        vendors.map((vendor) => VendorViewModel(vendor: vendor)).toList();

    if (this.topVendors.isEmpty) {
      this.loadingState = LoadingState.empty;
    } else {
      this.loadingState = LoadingState.completed;
    }
  }
}
