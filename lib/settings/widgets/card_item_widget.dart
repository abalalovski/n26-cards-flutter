import 'package:flutter/cupertino.dart';

class CardItemWidget extends StatelessWidget {
  final Color bgColor;

  const CardItemWidget({Key key, this.bgColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(color: bgColor);
  }
}
