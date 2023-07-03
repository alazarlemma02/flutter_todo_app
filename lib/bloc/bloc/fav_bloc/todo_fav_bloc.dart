import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'todo_fav_event.dart';
part 'todo_fav_state.dart';

class TodoFavBloc extends Bloc<TodoFavEvent, TodoFavState> {
  TodoFavBloc() : super(TodoFavInitial()) {
    on<TodoFavEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
