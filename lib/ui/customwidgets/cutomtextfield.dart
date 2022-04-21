import 'package:flutter/material.dart';

class CutomtextField extends StatelessWidget {
  CutomtextField({this.updatesearch});
  void Function(String)? updatesearch;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: TextField(
        onChanged: updatesearch,
        style: TextStyle(color: Colors.black, fontSize: 20.0),
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10.0),
            ),
          ),
          icon: Icon(
            Icons.abc,
            color: Colors.amber,
            size: 40,
          ),
          hintText: "Search",
          label: Text("lable"),
          floatingLabelBehavior: FloatingLabelBehavior.auto,
        ),
      ),
    );
  }
}
