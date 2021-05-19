import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:search_ui/viewModels/trending_tag_list_view_model.dart';
import 'package:search_ui/viewModels/vendor_list_view_model.dart';
import 'package:search_ui/views/search_screen.dart';

void main() {
  runApp(Root());
}

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiProvider(providers: [
        ChangeNotifierProvider(
          create: (_) => TrendingTagListViewModel(),
        ),
        ChangeNotifierProvider(
          create: (_) => VendorListViewModel(),
        )
      ], child: SearchScreen()),
    );
  }
}
