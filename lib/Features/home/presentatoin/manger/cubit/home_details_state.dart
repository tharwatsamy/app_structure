part of 'home_details_cubit.dart';

@immutable
abstract class HomeDetailsState {}

class HomeDetailsInitial extends HomeDetailsState {}

class HomeDetailsLoading extends HomeDetailsState {}

class HomeDetailsFailure extends HomeDetailsState {}

class HomeDetailsSuccess extends HomeDetailsState {}
// add more states depending on your case 