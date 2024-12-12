part of 'file_cubit.dart';

@freezed
class FileState with _$FileState {
  const factory FileState({
    @Default(DataStatus.initial) DataStatus status,
    @Default(0) selectTab
  }) = _FileState;
}
