import 'package:flutter/material.dart';

import 'card_action.dart';

class RoundCardActionWidget extends StatelessWidget implements CardAction {
  final String title;
  final IconData icon;

  const RoundCardActionWidget({Key key, this.title, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RawMaterialButton(
          onPressed: () {},
          elevation: 0.0,
          fillColor: Colors.greenAccent,
          child: Icon(icon, size: 24.0),
          padding: EdgeInsets.all(20.0),
          shape: CircleBorder(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Text(
            "",
            style: Theme.of(context).textTheme.subtitle1,
          ),
        )
      ],
    );
  }

  @override
  String get subtitle => "";

  @override
  ActionType get type => ActionType.ROUND;
}
