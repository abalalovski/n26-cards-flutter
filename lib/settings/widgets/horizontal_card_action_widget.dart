import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'card_action.dart';

class HorizontalCardActionWidget extends StatelessWidget implements CardAction {
  final Color background;
  final IconData leadIcon;
  final String title;
  final String subtitle;
  final IconData tailIcon;
  final VoidCallback onPressed;

  const HorizontalCardActionWidget(
      {Key key,
      this.background,
      this.leadIcon,
      this.title,
      this.subtitle,
      this.tailIcon,
      this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4.0),
      padding: EdgeInsets.all(8.0),
      color: background,
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(leadIcon),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16.0, bottom: 16.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(title, style: Theme.of(context).textTheme.subtitle1),
              Padding(padding: EdgeInsets.only(top: 4.0)),
              Text(subtitle, style: Theme.of(context).textTheme.subtitle2)
            ]),
          ),
        ),
        Icon(tailIcon),
      ]),
    );
  }

  @override
  ActionType get type => ActionType.HORIZONTAL;
}
