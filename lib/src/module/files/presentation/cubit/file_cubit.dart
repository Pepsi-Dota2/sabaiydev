import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sabaiydev/src/core/config/constant/enum.dart';
import 'package:sabaiydev/src/module/files/domain/model/file_images.dart';

part 'file_state.dart';
part 'file_cubit.freezed.dart';

class FileCubit extends Cubit<FileState> {
  FileCubit() : super(const FileState());
  void changeTab(int index) {
    emit(state.copyWith(selectTab: index));
  }

  void onListFileTabChange() {
    emit(state.copyWith(onListFileTab: !state.onListFileTab));
  }
   void onListFolderTabChange() {
    emit(state.copyWith(onListFolderTab: !state.onListFolderTab));
  }

  Future<void> loadingFiles() async {
    emit(state.copyWith(status: DataStatus.loading));
    await Future.delayed(const Duration(seconds: 4));
    final dataMock = FileImagesModel.fileImages;
    emit(state.copyWith(fileImage: dataMock));
  }
}
