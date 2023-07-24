import 'package:bloc/bloc.dart';

enum CounterEvent { increment, incrementTwice, incrementR }

// Conection__1__
class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc(super.initialState) {
    on<CounterEvent>((event, emit) async {
      switch (event) {
        case CounterEvent.increment:
          emit(state + 1);
          break;
        case CounterEvent.incrementTwice:
          emit(state + 2);
          break;
        case CounterEvent.incrementR:
          await Future.delayed(
            Duration(seconds: 3),
          );
          emit(state + 5);
          break;
      }
    });
  }
}
