import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'card_action.dart';

class CardPreferenceWidget extends StatefulWidget {
  final Color background;
  final IconData leadIcon;
  final String title;
  final String subtitle;
  final ValueSetter<bool> onChanged;

  const CardPreferenceWidget(
      {Key key, this.background, this.leadIcon, this.title, this.subtitle, this.onChanged})
      : super(key: key);

  @override
  _CardPreferenceState createState() => _CardPreferenceState();

  @override
  ActionType get type => ActionType.CHECKABLE;
}

class _CardPreferenceState extends State<CardPreferenceWidget> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 4.0),
      padding: EdgeInsets.all(8.0),
      color: widget.background,
      child: Row(children: [
        Icon(widget.leadIcon),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(widget.title, style: Theme.of(context).textTheme.subtitle1),
              Padding(padding: EdgeInsets.only(top: 4.0)),
              Text(widget.subtitle, style: Theme.of(context).textTheme.subtitle2)
            ]),
          ),
        ),
        Icon(Icons.check)
        /*Switch(
            value: _isChecked,
            onChanged: (checked) {
              setState(() {
                _isChecked = !_isChecked;
                widget.onChanged(checked);
              });
            })*/
        ,
      ]),
    );
  }
}
