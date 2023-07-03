import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bin_bloc_event.dart';
part 'bin_bloc_state.dart';

class TodoBinBloc extends Bloc<BinBlocEvent, BinBlocState> {
  TodoBinBloc() : super(BinBlocInitial()) {
    on<BinBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
