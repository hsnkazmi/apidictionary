import 'package:flutter/material.dart';

class custombutton extends StatelessWidget {
  custombutton({required this.onpress});
  void Function() onpress;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: ElevatedButton(
            onPressed: onpress,
            child: const Icon(
              Icons.search_sharp,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
