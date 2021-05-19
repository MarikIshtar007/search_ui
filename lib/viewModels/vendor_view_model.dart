import 'package:search_ui/models/vendor.dart';

class VendorViewModel {
  late Vendor _vendor;

  VendorViewModel({required Vendor vendor}) : _vendor = vendor;

  String get name {
    return _vendor.name;
  }

  String get designation {
    return _vendor.designation;
  }

  String get photoUrl {
    return _vendor.photoUrl;
  }
}
