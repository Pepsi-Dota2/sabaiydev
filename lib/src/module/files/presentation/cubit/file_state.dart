part of 'file_cubit.dart';

@freezed
class FileState with _$FileState {
  const factory FileState({
    @Default(DataStatus.initial) DataStatus status,
    @Default(0) selectTab,
    @Default(false) onListTab,
    @Default([]) List<FileImagesModel> fileImage,
  }) = _FileState;
}
