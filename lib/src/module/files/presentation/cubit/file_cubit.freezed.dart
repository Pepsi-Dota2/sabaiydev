// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'file_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FileState {
  DataStatus get status => throw _privateConstructorUsedError;
  dynamic get selectTab => throw _privateConstructorUsedError;
  dynamic get onListFileTab => throw _privateConstructorUsedError;
  List<FileImagesModel> get fileImage => throw _privateConstructorUsedError;
  dynamic get onListFolderTab => throw _privateConstructorUsedError;
  List<FileImagesModel> get trash => throw _privateConstructorUsedError;
  List<FileImagesModel> get selectedFiles => throw _privateConstructorUsedError;

  /// Create a copy of FileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FileStateCopyWith<FileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileStateCopyWith<$Res> {
  factory $FileStateCopyWith(FileState value, $Res Function(FileState) then) =
      _$FileStateCopyWithImpl<$Res, FileState>;
  @useResult
  $Res call(
      {DataStatus status,
      dynamic selectTab,
      dynamic onListFileTab,
      List<FileImagesModel> fileImage,
      dynamic onListFolderTab,
      List<FileImagesModel> trash,
      List<FileImagesModel> selectedFiles});
}

/// @nodoc
class _$FileStateCopyWithImpl<$Res, $Val extends FileState>
    implements $FileStateCopyWith<$Res> {
  _$FileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? selectTab = freezed,
    Object? onListFileTab = freezed,
    Object? fileImage = null,
    Object? onListFolderTab = freezed,
    Object? trash = null,
    Object? selectedFiles = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      selectTab: freezed == selectTab
          ? _value.selectTab
          : selectTab // ignore: cast_nullable_to_non_nullable
              as dynamic,
      onListFileTab: freezed == onListFileTab
          ? _value.onListFileTab
          : onListFileTab // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fileImage: null == fileImage
          ? _value.fileImage
          : fileImage // ignore: cast_nullable_to_non_nullable
              as List<FileImagesModel>,
      onListFolderTab: freezed == onListFolderTab
          ? _value.onListFolderTab
          : onListFolderTab // ignore: cast_nullable_to_non_nullable
              as dynamic,
      trash: null == trash
          ? _value.trash
          : trash // ignore: cast_nullable_to_non_nullable
              as List<FileImagesModel>,
      selectedFiles: null == selectedFiles
          ? _value.selectedFiles
          : selectedFiles // ignore: cast_nullable_to_non_nullable
              as List<FileImagesModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FileStateImplCopyWith<$Res>
    implements $FileStateCopyWith<$Res> {
  factory _$$FileStateImplCopyWith(
          _$FileStateImpl value, $Res Function(_$FileStateImpl) then) =
      __$$FileStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DataStatus status,
      dynamic selectTab,
      dynamic onListFileTab,
      List<FileImagesModel> fileImage,
      dynamic onListFolderTab,
      List<FileImagesModel> trash,
      List<FileImagesModel> selectedFiles});
}

/// @nodoc
class __$$FileStateImplCopyWithImpl<$Res>
    extends _$FileStateCopyWithImpl<$Res, _$FileStateImpl>
    implements _$$FileStateImplCopyWith<$Res> {
  __$$FileStateImplCopyWithImpl(
      _$FileStateImpl _value, $Res Function(_$FileStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FileState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? selectTab = freezed,
    Object? onListFileTab = freezed,
    Object? fileImage = null,
    Object? onListFolderTab = freezed,
    Object? trash = null,
    Object? selectedFiles = null,
  }) {
    return _then(_$FileStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      selectTab: freezed == selectTab ? _value.selectTab! : selectTab,
      onListFileTab:
          freezed == onListFileTab ? _value.onListFileTab! : onListFileTab,
      fileImage: null == fileImage
          ? _value._fileImage
          : fileImage // ignore: cast_nullable_to_non_nullable
              as List<FileImagesModel>,
      onListFolderTab: freezed == onListFolderTab
          ? _value.onListFolderTab!
          : onListFolderTab,
      trash: null == trash
          ? _value._trash
          : trash // ignore: cast_nullable_to_non_nullable
              as List<FileImagesModel>,
      selectedFiles: null == selectedFiles
          ? _value._selectedFiles
          : selectedFiles // ignore: cast_nullable_to_non_nullable
              as List<FileImagesModel>,
    ));
  }
}

/// @nodoc

class _$FileStateImpl implements _FileState {
  const _$FileStateImpl(
      {this.status = DataStatus.initial,
      this.selectTab = 0,
      this.onListFileTab = false,
      final List<FileImagesModel> fileImage = const [],
      this.onListFolderTab = false,
      final List<FileImagesModel> trash = const [],
      final List<FileImagesModel> selectedFiles = const []})
      : _fileImage = fileImage,
        _trash = trash,
        _selectedFiles = selectedFiles;

  @override
  @JsonKey()
  final DataStatus status;
  @override
  @JsonKey()
  final dynamic selectTab;
  @override
  @JsonKey()
  final dynamic onListFileTab;
  final List<FileImagesModel> _fileImage;
  @override
  @JsonKey()
  List<FileImagesModel> get fileImage {
    if (_fileImage is EqualUnmodifiableListView) return _fileImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fileImage);
  }

  @override
  @JsonKey()
  final dynamic onListFolderTab;
  final List<FileImagesModel> _trash;
  @override
  @JsonKey()
  List<FileImagesModel> get trash {
    if (_trash is EqualUnmodifiableListView) return _trash;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trash);
  }

  final List<FileImagesModel> _selectedFiles;
  @override
  @JsonKey()
  List<FileImagesModel> get selectedFiles {
    if (_selectedFiles is EqualUnmodifiableListView) return _selectedFiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedFiles);
  }

  @override
  String toString() {
    return 'FileState(status: $status, selectTab: $selectTab, onListFileTab: $onListFileTab, fileImage: $fileImage, onListFolderTab: $onListFolderTab, trash: $trash, selectedFiles: $selectedFiles)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FileStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other.selectTab, selectTab) &&
            const DeepCollectionEquality()
                .equals(other.onListFileTab, onListFileTab) &&
            const DeepCollectionEquality()
                .equals(other._fileImage, _fileImage) &&
            const DeepCollectionEquality()
                .equals(other.onListFolderTab, onListFolderTab) &&
            const DeepCollectionEquality().equals(other._trash, _trash) &&
            const DeepCollectionEquality()
                .equals(other._selectedFiles, _selectedFiles));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(selectTab),
      const DeepCollectionEquality().hash(onListFileTab),
      const DeepCollectionEquality().hash(_fileImage),
      const DeepCollectionEquality().hash(onListFolderTab),
      const DeepCollectionEquality().hash(_trash),
      const DeepCollectionEquality().hash(_selectedFiles));

  /// Create a copy of FileState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FileStateImplCopyWith<_$FileStateImpl> get copyWith =>
      __$$FileStateImplCopyWithImpl<_$FileStateImpl>(this, _$identity);
}

abstract class _FileState implements FileState {
  const factory _FileState(
      {final DataStatus status,
      final dynamic selectTab,
      final dynamic onListFileTab,
      final List<FileImagesModel> fileImage,
      final dynamic onListFolderTab,
      final List<FileImagesModel> trash,
      final List<FileImagesModel> selectedFiles}) = _$FileStateImpl;

  @override
  DataStatus get status;
  @override
  dynamic get selectTab;
  @override
  dynamic get onListFileTab;
  @override
  List<FileImagesModel> get fileImage;
  @override
  dynamic get onListFolderTab;
  @override
  List<FileImagesModel> get trash;
  @override
  List<FileImagesModel> get selectedFiles;

  /// Create a copy of FileState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FileStateImplCopyWith<_$FileStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
