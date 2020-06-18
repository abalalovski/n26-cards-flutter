import 'package:cards/settings/widgets/card_widget.dart';
import 'package:cards/settings/widgets/checkable_card_action.dart';
import 'package:cards/settings/widgets/horizontal_card_action.dart';
import 'package:flutter/material.dart';

class CardsPage extends StatefulWidget {
  @override
  _CardsPageState createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Cards Settings", style: Theme.of(context).textTheme.headline6),
        centerTitle: false,
      ),
      body: _renderView(),
    );
  }

  Widget _renderView() {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: SizedBox(
          height: 260.0,
          child: PageView.builder(
              controller: PageController(viewportFraction: 0.9),
              pageSnapping: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _cardsList()[index],
                );
              }),
        ),
      ),
      Expanded(
        child: ListView(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [..._roundCardActions()]),
          ),
          Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                    margin: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: _cardActions().length,
                          itemBuilder: (context, index) {
                            return _cardActions()[index];
                          }),
                    ))
              ])
        ]),
      )
    ]);
  }

  List<CardWidget> _cardsList() => [
        CardWidget(bgColor: Colors.red),
        CardWidget(bgColor: Colors.yellow),
        CardWidget(bgColor: Colors.green),
      ];

  List<Widget> _cardActions() => [
        HorizontalCardAction(
            background: Colors.red,
            leadIcon: Icons.image,
            title: "",
            subtitle: "",
            tailIcon: Icons.chevron_right,
            onPressed: () {}),
        CheckableCardAction(
            background: Colors.yellow,
            leadIcon: Icons.image,
            title: "",
            subtitle: "",
            onChanged: (value) {}),
        CheckableCardAction(
            background: Colors.yellow,
            leadIcon: Icons.image,
            title: "",
            subtitle: "",
            onChanged: (value) {}),
        CheckableCardAction(
            background: Colors.yellow,
            leadIcon: Icons.image,
            title: "",
            subtitle: "",
            onChanged: (value) {}),
        HorizontalCardAction(
            background: Colors.green,
            leadIcon: Icons.image,
            title: "",
            subtitle: "",
            tailIcon: Icons.chevron_right,
            onPressed: () {}),
        HorizontalCardAction(
            background: Colors.orange,
            leadIcon: Icons.image,
            title: "",
            subtitle: "",
            tailIcon: Icons.chevron_right,
            onPressed: () {})
      ];

  List<Widget> _roundCardActions() {
    return [
      RoundCardAction(title: "Lock", icon: Icons.lock),
      RoundCardAction(title: "Card Details", icon: Icons.remove_red_eye),
      RoundCardAction(title: "Reset PIN", icon: Icons.credit_card),
    ];
  }
}

class RoundCardAction extends StatelessWidget implements CardAction {
  final String title;
  final IconData icon;

  const RoundCardAction({Key key, this.title, this.icon}) : super(key: key);

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
            title,
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

class CardAction {
  final ActionType type;
  final String title;
  final String subtitle;

  CardAction(this.type, this.title, {this.subtitle});
}

enum ActionType { ROUND, HORIZONTAL, CHECKABLE }
