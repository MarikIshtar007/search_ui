import 'package:flutter/material.dart';
import 'package:search_ui/models/master_class.dart';
import 'package:search_ui/services/web_services.dart';
import 'package:search_ui/viewModels/master_class_view_model.dart';
import 'package:search_ui/widgets/master_class_tile.dart';

enum LoadingState {
  completed,
  searching,
  empty,
}

class MasterClassListViewModel extends ChangeNotifier {
  LoadingState loadingState = LoadingState.empty;
  List<MasterClassTile> masterClasses = [];

  void getMasterClasses() {
    List<MasterClass> classes = WebService().fetchMasterClass();

    List<MasterClassViewModel> classList = classes
        .map((mclass) => MasterClassViewModel(masterClass: mclass))
        .toList();

    this.masterClasses = classList.map((mclass) {
      return MasterClassTile(
        title: mclass.title,
        price: mclass.price,
        photoUrl: mclass.photoUrl,
        dates: mclass.dates,
        timings: mclass.timings,
      );
    }).toList();

    if (this.masterClasses.isEmpty) {
      this.loadingState = LoadingState.empty;
    } else {
      this.loadingState = LoadingState.completed;
    }
  }
}
