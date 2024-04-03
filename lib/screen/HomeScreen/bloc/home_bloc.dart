import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Data/Category/repo.dart';
import 'package:flutter_application_1/Model/category.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final ICategoryRepository categoryRepo;
  HomeBloc(this.categoryRepo) : super(HomeInitial()) {
    on<HomeEvent>((event, emit) async {
      if (event is HomeStarted) {
        emit(HomeLoading());
        try {
          final categories = await categoryRepo.getAll();
          emit(HomeSuccess(categories: categories));
        } catch (e) {
          emit(HomeError(error: e.toString()));
        }
      }
    });
  }
}
