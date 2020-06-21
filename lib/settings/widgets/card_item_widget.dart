import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardItemWidget extends StatelessWidget {
  final String cardImageUrl;
  final bool isLocked;

  const CardItemWidget({Key key, this.cardImageUrl, this.isLocked = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(fit: StackFit.expand, children: [
      FadeInImage.assetNetwork(placeholder: "", image: cardImageUrl),
      isLocked
          ? Container(
              color: Color(SEMI_WHITE), // semi transparent white
              child: Align(
                  alignment: Alignment.center,
                  child: Icon(Icons.lock, size: 72.0, color: Colors.white)),
            )
          : SizedBox()
    ]));
  }
}

const SEMI_WHITE = 0x90ffffff;
