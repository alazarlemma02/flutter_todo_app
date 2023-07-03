part of 'bin_bloc_bloc.dart';

@immutable
abstract class BinBlocState {}

class BinBlocInitial extends BinBlocState {}

class TodoBinActionState extends BinBlocState{}

class TodoFromBinOutState extends TodoBinActionState{}

class TodoBinTotallyRemovingState extends TodoBinActionState{}

class TodoBinTotallyRemovedState extends TodoBinActionState{}
