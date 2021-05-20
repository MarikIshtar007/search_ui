import 'package:search_ui/models/master_class.dart';

class MasterClassViewModel {
  MasterClass _masterClass;

  MasterClassViewModel({required MasterClass masterClass})
      : _masterClass = masterClass;
  //   final String title;
  // final int price;
  // final String photoUrl;
  // final String dates;
  // final String timings;

  String get title {
    return _masterClass.title;
  }

  String get photoUrl {
    return _masterClass.photoUrl;
  }

  int get price {
    return _masterClass.price;
  }

  String get dates {
    return _masterClass.dates;
  }

  String get timings {
    return _masterClass.timings;
  }
}
