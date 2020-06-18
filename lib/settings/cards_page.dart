import 'package:cards/settings/widgets/card_item_widget.dart';
import 'package:cards/settings/widgets/card_preference_widget.dart';
import 'package:cards/settings/widgets/horizontal_card_action_widget.dart';
import 'package:cards/settings/widgets/round_card_action_widget.dart';
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
                    elevation: 4.0,
                    margin: EdgeInsets.symmetric(horizontal: 16.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.separated(
                          separatorBuilder: (context, index) {
                            return Divider(height: 1.0);
                          },
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

  List<CardItemWidget> _cardsList() => [
        CardItemWidget(bgColor: Colors.red),
        CardItemWidget(bgColor: Colors.yellow),
        CardItemWidget(bgColor: Colors.green)
      ];

  List<Widget> _cardActions() => [
        HorizontalCardActionWidget(
            leadIcon: Icons.image,
            title: "Open in Google Pay",
            subtitle: "Manage this card in your Google Pay wallet",
            tailIcon: Icons.chevron_right,
            onPressed: () {}),
        CardPreferenceWidget(leadIcon: Icons.wifi, title: "Online Payments", onChanged: (value) {}),
        CardPreferenceWidget(
            leadIcon: Icons.local_atm, title: "ATM Withdrawals", onChanged: (value) {}),
        CardPreferenceWidget(
            leadIcon: Icons.image, title: "Paymentns Abroad", onChanged: (value) {}),
        HorizontalCardActionWidget(
            leadIcon: Icons.image,
            title: "Daily Limits",
            subtitle: "Set your card payment limits",
            tailIcon: Icons.chevron_right,
            onPressed: () {}),
        HorizontalCardActionWidget(
            leadIcon: Icons.image,
            title: "Reorder Card",
            subtitle: "Get a new card in case you have it lost or stolen",
            tailIcon: Icons.chevron_right,
            onPressed: () {})
      ];

  List<Widget> _roundCardActions() {
    return [
      RoundCardActionWidget(title: "Lock", icon: Icons.lock),
      RoundCardActionWidget(title: "Card Details", icon: Icons.remove_red_eye),
      RoundCardActionWidget(title: "Reset PIN", icon: Icons.credit_card),
    ];
  }
}
