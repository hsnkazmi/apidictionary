import 'package:flutter/material.dart';

class CFloting extends StatelessWidget {
  const CFloting({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    );
  }
}
