import 'dart:ui';

import 'package:sabaiydev/src/core/config/constant/app_color.dart';

enum DataStatus { initial, loading, success, failure, error }

enum NavbarItem { home , file , share , short}
enum TabbarFile {files , folder}

enum CategoryType {
  imagesFile,
  video,
  audio,
  application,
  other;
  Color get backgroundColor {
    switch (this) {
      case CategoryType.imagesFile:
        return AppColors.lightOrange; // Light pink
      case CategoryType.video:
        return AppColors.lightBlue2; // Light blue
      case CategoryType.audio:
        return AppColors.lightPurple; // Light green
      case CategoryType.application:
        return AppColors.lightTeal; // Light orange
      case CategoryType.other:
        return AppColors.lightBlue2; // Light gray
    }
  }
}