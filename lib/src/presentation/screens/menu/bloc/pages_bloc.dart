import 'package:flutter/material.dart';
import 'package:log_generator/log_generator.dart';
import 'package:side_menu/src/presentation/screens/menu/bloc/pages_event.dart';
import 'package:side_menu/src/presentation/screens/menu/bloc/pages_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PagesBloc extends Bloc<PagesEvent, PagesState>{
  final PageController pageController;
  final LogGenerator _logGenerator;
  int currentPage = 0;

  PagesBloc(this.pageController, this._logGenerator) : super(HomePageState()){
    on<ChangePageEvent>(_changePage);
  }

  void _changePage(ChangePageEvent event, Emitter emit) {
    try {
      pageController.jumpToPage(event.page);
      currentPage = event.page;
      switch(event.page){
        case 0:
          emit(HomePageState());
          return;
        case 1:
          emit(SecondPageState());
          return;
        case 2:
          emit(ThirdPageState());
          return;
        case 3:
          emit(FourthPageState());
          return;
        default:
          emit(PageExceptionState('Página não encontrada!'));
          return;
      }
    } catch(e) {
      _logGenerator.error(e);
      emit(PageExceptionState(e.toString()));
    }
  }
}