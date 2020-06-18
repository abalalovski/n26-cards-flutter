class CardAction {
  final ActionType type;
  final String title;
  final String subtitle;

  CardAction(this.type, this.title, {this.subtitle});
}

enum ActionType { ROUND, HORIZONTAL, CHECKABLE }
