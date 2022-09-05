import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../constants/colors.dart';

part 'file_model.freezed.dart';

@freezed
class FileModel with _$FileModel {
  const factory FileModel({
    required String fileId,
    required String fileName,
    required String fileSize,
    required FileExtension fileExtension,
    required DateTime createdAt,
  }) = _FileModel;
}

enum FileExtension { js, mp3, jpeg }

extension FileTypeExtension on FileExtension {
  Color get iconColor {
    switch (this) {
      case FileExtension.js:
        return lightBlue;
      case FileExtension.mp3:
        return lightPink;
      case FileExtension.jpeg:
        return lightGreen;
    }
  }

  IconData get iconData {
    switch (this) {
      case FileExtension.js:
        return Icons.description_outlined;
      case FileExtension.mp3:
        return Icons.mic;
      case FileExtension.jpeg:
        return Icons.image_outlined;
    }
  }
}
