import 'package:flutter/cupertino.dart';

class CardWidget extends StatelessWidget {
  final Color bgColor;

  const CardWidget({Key key, this.bgColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: bgColor);
  }
}
