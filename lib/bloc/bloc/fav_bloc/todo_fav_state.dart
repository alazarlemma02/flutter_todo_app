part of 'todo_fav_bloc.dart';

@immutable
abstract class TodoFavState {}

class TodoFavInitial extends TodoFavState {}

class TodoFavBuildingState extends TodoFavState{}

class TodoFavActionState extends TodoFavState{}

class TodoFavLoadingState extends TodoFavBuildingState{}

class TodoFavLoadedState extends TodoFavBuildingState{}

class TodoFavRemovingState extends TodoFavActionState{}

class TodoFavRemovedState extends TodoFavActionState{}




