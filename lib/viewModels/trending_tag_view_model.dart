import 'package:search_ui/models/trending_tag.dart';

class TrendingTagViewModel {
  late TrendingTag _trendingTag;

  TrendingTagViewModel({required TrendingTag tag}) : _trendingTag = tag;

  String get title {
    return _trendingTag.title;
  }

  String get url {
    return _trendingTag.url;
  }
}
