import 'package:sabaiydev/src/core/config/constant/images_path.dart';

class CategoryModel {
  final String title;
  final String assetSvgName;
  final int file;
  final double sizeData;

  CategoryModel({
    required this.title,
    required this.assetSvgName,
    required this.file,
    required this.sizeData,
  });

  static final List<CategoryModel> mockCategoryData = [
    CategoryModel(
      title: "Images",
      assetSvgName: AppImages.fileImage,
      file: 120,
      sizeData: 15.4,
    ),
    CategoryModel(
      title: "Videos",
      assetSvgName: AppImages.videoImage,
      file: 80,
      sizeData: 102.8,
    ),
    CategoryModel(
      title: "audio",
      assetSvgName: AppImages.audioImage,
      file: 65,
      sizeData: 56.7,
    ),
    CategoryModel(
      title: "application",
      assetSvgName: AppImages.applicationImages,
      file: 200,
      sizeData: 45.3,
    ),
    CategoryModel(
      title: "Others",
      assetSvgName: AppImages.otherFile,
      file: 50,
      sizeData: 12.0,
    ),
  ];
}
