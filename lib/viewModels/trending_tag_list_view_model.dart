import 'package:flutter/material.dart';
import 'package:search_ui/models/trending_tag.dart';
import 'package:search_ui/services/web_services.dart';
import 'package:search_ui/viewModels/trending_tag_view_model.dart';

enum LoadingState {
  completed,
  searching,
  empty,
}

class TrendingTagListViewModel extends ChangeNotifier {
  LoadingState loadingState = LoadingState.empty;
  List<TrendingTagViewModel> trendingTags = [];

  void getTags() {
    print('get Tags');
    List<TrendingTag> tags = WebService().fetchTrendingTags();

    this.trendingTags =
        tags.map((tag) => TrendingTagViewModel(tag: tag)).toList();

    if (this.trendingTags.isEmpty) {
      this.loadingState = LoadingState.empty;
    } else {
      this.loadingState = LoadingState.completed;
    }
  }
}
