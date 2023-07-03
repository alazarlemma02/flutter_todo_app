part of 'todo_bloc.dart';

@immutable
abstract class TodoState {}

class TodoInitial extends TodoState {}

class TodoActionState extends TodoState{}

class TodoBuildingState extends TodoState{}

class TodoListLoading extends TodoBuildingState{}

class TodoListLoaded extends TodoBuildingState{}

class TodoCreatingState extends TodoActionState{}

class TodoCreatedState extends TodoActionState{}

class TodoRemovingState extends TodoActionState{}

class TodoRemovedState extends TodoActionState{}

class TodoUpdatingState extends TodoActionState{}

class TodoUpdatedState extends TodoActionState{}

class TodoAddingToBin extends TodoActionState{}

class TodoAddedToBin extends TodoActionState{}
