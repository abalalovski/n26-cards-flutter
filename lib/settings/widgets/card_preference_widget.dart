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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Icon(widget.leadIcon),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 16.0, bottom: 16.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(widget.title, style: Theme.of(context).textTheme.subtitle1),
                  widget.subtitle != null
                      ? Padding(
                          padding: EdgeInsets.only(top: 4.0),
                          child:
                              Text(widget.subtitle, style: Theme.of(context).textTheme.subtitle2))
                      : Container()
                ]),
          ),
        ),
        Switch(
            activeColor: Colors.teal,
            value: _isChecked,
            onChanged: (checked) {
              setState(() {
                _isChecked = !_isChecked;
                widget.onChanged(checked);
              });
            })
      ]),
    );
  }
}
