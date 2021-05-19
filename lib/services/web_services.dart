import 'package:search_ui/dummy_data.dart';
import 'package:search_ui/models/trending_tag.dart';
import 'package:search_ui/models/vendor.dart';

class WebService {
  // Add call to api's / database here using http or dio. And handle the it accordingly.
  // For now we work with dummy data;

  List<TrendingTag> fetchTrendingTags() {
    // This function would be a Future return type, have async and
    // query the data and parse it using the fromJSON method from the model.

    // Example would be...
    /*
    response = http.get(url);
    result = response.body;
    var tags = result['trending_tags'];
    return tags.map((tag)=>TrendingTag.fromJSON(tag)).toList();
    */
    Future.delayed(Duration(seconds: 1));
    return trendingTagDummyData;
  }

  List<Vendor> fetchTopVendors() {
    // This function would be a Future return type, have async and
    // query the data and parse it using the fromJSON method from the model.
    // similar code as above
    Future.delayed(Duration(seconds: 1));
    return topVendorsDummyData;
  }
}
