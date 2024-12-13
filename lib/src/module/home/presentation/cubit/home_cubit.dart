import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sabaiydev/src/core/config/constant/enum.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(const HomeState());

  void getNavBarItem(NavbarItem item) {
  int newIndex;
  switch (item) {
    case NavbarItem.home:
      newIndex = 0;
      break;
    case NavbarItem.file:
      newIndex = 1;
      break;
    case NavbarItem.share:
      newIndex = 2;
      break;
    case NavbarItem.short:
      newIndex = 3;
      break;
  }
  emit(state.copyWith(navbarItem: item, index: newIndex));
}


  void onClick() {
    emit(state.copyWith(onClick: !state.onClick));
  }

  void ontFileChange() {
    emit(state.copyWith(onClick: !state.onClick));
  }

Future<void> pickImage({required ImageSource source}) async {
  try {
    emit(state.copyWith(status: DataStatus.loading));
    final ImagePicker imagePicker = ImagePicker();
    final XFile? file = await imagePicker.pickImage(source: source);

    if (file != null) {
      emit(state.copyWith(
        status: DataStatus.success,
        selectedImagePath: file.path,
      ));
    } else {
      emit(state.copyWith(
        status: DataStatus.failure,
        selectedImagePath: null,
      ));
    }
  } catch (e) {
    emit(state.copyWith(status: DataStatus.failure, selectedImagePath: null));
  }
}


}
