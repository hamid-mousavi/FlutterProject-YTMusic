part of 'home_bloc.dart';

@immutable
sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class HomeLoading extends HomeState {}

final class HomeSuccess extends HomeState {
  final List<SongCategory> categories;

  HomeSuccess({required this.categories});
}

final class HomeError extends HomeState {
  final String error;

  HomeError({required this.error});
}
