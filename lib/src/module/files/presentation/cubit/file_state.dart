part of 'file_cubit.dart';

@freezed
class FileState with _$FileState {
  const factory FileState({
    @Default(DataStatus.initial) DataStatus status,
    @Default(0) selectTab,
    @Default(false) onListFileTab,
    @Default([]) List<FileImagesModel> fileImage,
    @Default(false) onListFolderTab,
    @Default([]) List<FileImagesModel> trash,
    @Default([]) List<FileImagesModel> selectedFiles,
  }) = _FileState;
}
