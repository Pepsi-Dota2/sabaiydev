import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sabaiydev/src/core/config/constant/enum.dart';

part 'file_state.dart';
part 'file_cubit.freezed.dart';

class FileCubit extends Cubit<FileState> {
  FileCubit() : super(const FileState());
  void changeTab(int index) {
    emit(state.copyWith(selectTab: index));
  }

}
