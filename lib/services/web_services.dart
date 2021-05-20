import 'package:search_ui/dummy_data.dart';
import 'package:search_ui/models/master_class.dart';
import 'package:search_ui/models/trending_profile.dart';
import 'package:search_ui/models/trending_tag.dart';
import 'package:search_ui/models/vendor.dart';
import 'dart:convert';

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
    List<Vendor> topVendors = [];

    var response = JsonEncoder().convert(topVendorsDummyData);
    Future.delayed(Duration(seconds: 1));
    List data = jsonDecode(response)['data'];
    topVendors = data.map((vendor) => Vendor.fromJSON(vendor)).toList();
    return topVendors;
  }

  List<TrendingProfile> fetchTopProfiles() {
    // This function would be a Future return type, have async and
    // query the data and parse it using the fromJSON method from the model.
    // similar code as above
    List<TrendingProfile> trendingProfiles = [];

    var response = JsonEncoder().convert(trendingProfileDummyData);
    Future.delayed(Duration(seconds: 1));
    List data = jsonDecode(response)['data'];
    trendingProfiles =
        data.map((profile) => TrendingProfile.fromJSON(profile)).toList();
    return trendingProfiles;
  }

  List<MasterClass> fetchMasterClass() {
    // This function would be a Future return type, have async and
    // query the data and parse it using the fromJSON method from the model.
    // similar code as above
    List<MasterClass> masterClasses = [];
    // This is the sort of response we would get from an api call;
    var response = JsonEncoder().convert(masterClassDummyData);
    Future.delayed(Duration(seconds: 1));
    List data = jsonDecode(response)['data'];
    masterClasses = data.map((master) => MasterClass.fromJSON(master)).toList();
    return masterClasses;
  }
}
