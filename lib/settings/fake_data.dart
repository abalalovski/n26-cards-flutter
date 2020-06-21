import 'package:cards/settings/widgets/card_item_widget.dart';
import 'package:cards/settings/widgets/card_preference_widget.dart';
import 'package:cards/settings/widgets/horizontal_card_action_widget.dart';
import 'package:cards/settings/widgets/round_card_action_widget.dart';
import 'package:flutter/material.dart';

List<CardItemWidget> cardsList() => [
      CardItemWidget(cardImageUrl: "https://i.imgur.com/w3RYFNw.png", isLocked: false),
      CardItemWidget(cardImageUrl: "https://i.imgur.com/w3RYFNw.png", isLocked: true)
    ];

List<Widget> cardActions() => [
      HorizontalCardActionWidget(
          leadIcon: Icons.image,
          title: "Open in Google Pay",
          subtitle: "Manage this card in your Google Pay wallet",
          tailIcon: Icons.chevron_right,
          onPressed: () {}),
      CardPreferenceWidget(leadIcon: Icons.wifi, title: "Online Payments", onChanged: (value) {}),
      CardPreferenceWidget(
          leadIcon: Icons.local_atm, title: "ATM Withdrawals", onChanged: (value) {}),
      CardPreferenceWidget(leadIcon: Icons.image, title: "Paymentns Abroad", onChanged: (value) {}),
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

List<Widget> roundCardActions() {
  return [
    RoundCardActionWidget(title: "Lock", icon: Icons.lock),
    RoundCardActionWidget(title: "Card Details", icon: Icons.remove_red_eye),
    RoundCardActionWidget(title: "Reset PIN", icon: Icons.credit_card),
  ];
}
