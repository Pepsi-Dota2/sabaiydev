import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sabaiydev/src/core/config/constant/enum.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  void getNavBarItem(NavbarItem navbarItem) {
    switch (navbarItem) {
      case NavbarItem.home:
        emit(state.copyWith(navbarItem: NavbarItem.home, index: 0));
        break;
      case NavbarItem.file:
        emit(state.copyWith(navbarItem: NavbarItem.file, index: 1));
        break;
      case NavbarItem.share:
        emit(state.copyWith(navbarItem: NavbarItem.share, index: 2));
        break;
      case NavbarItem.short:
        emit(state.copyWith(navbarItem: NavbarItem.short, index: 2));
        break;
    }
  }
}
