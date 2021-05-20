import 'package:search_ui/models/trending_profile.dart';

class TrendingProfileViewModel {
  TrendingProfile _trendingProfile;

  TrendingProfileViewModel({required TrendingProfile trendingProfile})
      : _trendingProfile = trendingProfile;

  String get name {
    return _trendingProfile.name;
  }

  int get likes {
    return _trendingProfile.likes;
  }

  String get photoUrl {
    return _trendingProfile.photoUrl;
  }
}
