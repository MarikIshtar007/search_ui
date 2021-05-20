import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:search_ui/services/web_services.dart';
import 'package:search_ui/viewModels/master_class_list_view_model.dart';

class MasterClassWidget extends StatefulWidget {
  @override
  _MasterClassWidgetState createState() => _MasterClassWidgetState();
}

class _MasterClassWidgetState extends State<MasterClassWidget> {
  @override
  void initState() {
    super.initState();
    Provider.of<MasterClassListViewModel>(context, listen: false)
        .getMasterClasses();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var listViewModel = Provider.of<MasterClassListViewModel>(context);
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Masterclass',
              style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: width,
              height: height * 0.22,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: listViewModel.masterClasses.length,
                itemBuilder: (context, index) =>
                    listViewModel.masterClasses[index],
              ),
            ),
          ],
        ));
  }
}
