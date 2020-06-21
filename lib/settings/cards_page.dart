import 'package:cards/settings/fake_data.dart';
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
      body: _renderCardsView(),
    );
  }

  Widget _renderCardsView() {
    return Column(children: [
      Padding(padding: const EdgeInsets.symmetric(vertical: 8.0), child: CardsList()),
      Expanded(child: CardActionsList())
    ]);
  }
}

class CardActionsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [...roundCardActions()]),
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
                      separatorBuilder: (context, index) => Divider(height: 1.0),
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: cardActions().length,
                      itemBuilder: (context, index) => cardActions()[index]),
                ))
          ])
    ]);
  }
}

class CardsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260.0,
      child: PageView.builder(
          controller: PageController(viewportFraction: 0.9),
          pageSnapping: true,
          itemCount: cardsList().length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: cardsList()[index],
            );
          }),
    );
  }
}
