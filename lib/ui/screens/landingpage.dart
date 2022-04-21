import 'package:apidictionary/service/dictionaryservice.dart';
import 'package:apidictionary/ui/theme.dart';
import 'package:flutter/material.dart';

import '../customwidgets/cfloting.dart';
import '../customwidgets/custombuton.dart';
import '../customwidgets/cutomtextfield.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  String searchtext = "";
  void updateui(String search) {
    setState(() {
      searchtext = search;
    });
  }

  Dictionaryservice dictservice = Dictionaryservice();
  void onpress() {
    dictservice.getdata(searchtext);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            CutomtextField(updatesearch: updateui),
            custombutton(onpress: onpress),
            Divider(
              thickness: 2,
              color: customtheme.primaryColor,
            ),
            Expanded(child: Text(searchtext))
          ],
        ),
      ),
      floatingActionButton: const CFloting(),
    );
  }
}
