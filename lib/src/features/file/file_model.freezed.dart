// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'file_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FileModel {
  String get fileId => throw _privateConstructorUsedError;
  String get fileName => throw _privateConstructorUsedError;
  String get fileSize => throw _privateConstructorUsedError;
  FileExtension get fileExtension => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FileModelCopyWith<FileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FileModelCopyWith<$Res> {
  factory $FileModelCopyWith(FileModel value, $Res Function(FileModel) then) =
      _$FileModelCopyWithImpl<$Res>;
  $Res call(
      {String fileId,
      String fileName,
      String fileSize,
      FileExtension fileExtension,
      DateTime createdAt});
}

/// @nodoc
class _$FileModelCopyWithImpl<$Res> implements $FileModelCopyWith<$Res> {
  _$FileModelCopyWithImpl(this._value, this._then);

  final FileModel _value;
  // ignore: unused_field
  final $Res Function(FileModel) _then;

  @override
  $Res call({
    Object? fileId = freezed,
    Object? fileName = freezed,
    Object? fileSize = freezed,
    Object? fileExtension = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      fileId: fileId == freezed
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: fileSize == freezed
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as String,
      fileExtension: fileExtension == freezed
          ? _value.fileExtension
          : fileExtension // ignore: cast_nullable_to_non_nullable
              as FileExtension,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_FileModelCopyWith<$Res> implements $FileModelCopyWith<$Res> {
  factory _$$_FileModelCopyWith(
          _$_FileModel value, $Res Function(_$_FileModel) then) =
      __$$_FileModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String fileId,
      String fileName,
      String fileSize,
      FileExtension fileExtension,
      DateTime createdAt});
}

/// @nodoc
class __$$_FileModelCopyWithImpl<$Res> extends _$FileModelCopyWithImpl<$Res>
    implements _$$_FileModelCopyWith<$Res> {
  __$$_FileModelCopyWithImpl(
      _$_FileModel _value, $Res Function(_$_FileModel) _then)
      : super(_value, (v) => _then(v as _$_FileModel));

  @override
  _$_FileModel get _value => super._value as _$_FileModel;

  @override
  $Res call({
    Object? fileId = freezed,
    Object? fileName = freezed,
    Object? fileSize = freezed,
    Object? fileExtension = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$_FileModel(
      fileId: fileId == freezed
          ? _value.fileId
          : fileId // ignore: cast_nullable_to_non_nullable
              as String,
      fileName: fileName == freezed
          ? _value.fileName
          : fileName // ignore: cast_nullable_to_non_nullable
              as String,
      fileSize: fileSize == freezed
          ? _value.fileSize
          : fileSize // ignore: cast_nullable_to_non_nullable
              as String,
      fileExtension: fileExtension == freezed
          ? _value.fileExtension
          : fileExtension // ignore: cast_nullable_to_non_nullable
              as FileExtension,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$_FileModel implements _FileModel {
  const _$_FileModel(
      {required this.fileId,
      required this.fileName,
      required this.fileSize,
      required this.fileExtension,
      required this.createdAt});

  @override
  final String fileId;
  @override
  final String fileName;
  @override
  final String fileSize;
  @override
  final FileExtension fileExtension;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'FileModel(fileId: $fileId, fileName: $fileName, fileSize: $fileSize, fileExtension: $fileExtension, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FileModel &&
            const DeepCollectionEquality().equals(other.fileId, fileId) &&
            const DeepCollectionEquality().equals(other.fileName, fileName) &&
            const DeepCollectionEquality().equals(other.fileSize, fileSize) &&
            const DeepCollectionEquality()
                .equals(other.fileExtension, fileExtension) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fileId),
      const DeepCollectionEquality().hash(fileName),
      const DeepCollectionEquality().hash(fileSize),
      const DeepCollectionEquality().hash(fileExtension),
      const DeepCollectionEquality().hash(createdAt));

  @JsonKey(ignore: true)
  @override
  _$$_FileModelCopyWith<_$_FileModel> get copyWith =>
      __$$_FileModelCopyWithImpl<_$_FileModel>(this, _$identity);
}

abstract class _FileModel implements FileModel {
  const factory _FileModel(
      {required final String fileId,
      required final String fileName,
      required final String fileSize,
      required final FileExtension fileExtension,
      required final DateTime createdAt}) = _$_FileModel;

  @override
  String get fileId;
  @override
  String get fileName;
  @override
  String get fileSize;
  @override
  FileExtension get fileExtension;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$_FileModelCopyWith<_$_FileModel> get copyWith =>
      throw _privateConstructorUsedError;
}
