import 'package:cards/settings/cards_event.dart';
import 'package:cards/settings/cards_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardsBloc extends Bloc<CardsEvent, CardsState> {
  @override
  // TODO: implement initialState
  get initialState => throw UnimplementedError();

  @override
  Stream<CardsState> mapEventToState(event) {
    return Stream.empty();
  }
}
