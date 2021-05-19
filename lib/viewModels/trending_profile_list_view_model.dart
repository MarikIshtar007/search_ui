import 'package:flutter/material.dart';
import 'package:search_ui/models/trending_profile.dart';
import 'package:search_ui/services/web_services.dart';
import 'package:search_ui/viewModels/trending_profile_view_model.dart';
import 'package:search_ui/widgets/trending_profile_tile.dart';

enum LoadingState {
  completed,
  searching,
  empty,
}

class TrendingProfileListViewModel extends ChangeNotifier {
  LoadingState loadingState = LoadingState.empty;
  List<TrendingProfileTile> trendingProfiles = [];

  void getTrendingProfiles() {
    List<TrendingProfile> profiles = WebService().fetchTopProfiles();

    List<TrendingProfileViewModel> profileList = profiles
        .map((profile) => TrendingProfileViewModel(trendingProfile: profile))
        .toList();

    this.trendingProfiles = profileList.map((profile) {
      return TrendingProfileTile(
        name: profile.name,
        likes: profile.likes,
        photoUrl: profile.photoUrl,
      );
    }).toList();

    if (this.trendingProfiles.isEmpty) {
      this.loadingState = LoadingState.empty;
    } else {
      this.loadingState = LoadingState.completed;
    }
  }
}
