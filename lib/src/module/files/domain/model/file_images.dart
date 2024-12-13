import 'package:intl/intl.dart';
import 'package:sabaiydev/src/core/utils/format_date.dart';

class FileImagesModel {
  final String image;
  final String name;
  final String? startedDate;

  FileImagesModel({
    required this.image,
    required this.name,
    this.startedDate,
  });

  static final List<FileImagesModel> fileImages = [
    FileImagesModel(
      image: "assets/images/cartoon-baby.jpg",
      name: "Elegant Design Poster",
      startedDate: FormatDateUtil.formatDate(DateTime.now().subtract(Duration(days: 3))),
    ),
    FileImagesModel(
      image: "assets/images/cartoon-boy.jpg",
      name: "Baby Elephant Illustration",
      startedDate: FormatDateUtil.formatDate(DateTime.now().subtract(Duration(days: 7))),
    ),
    FileImagesModel(
      image: "assets/images/cute-baby-elephant.png",
      name: "Adorable Panda Artwork",
      startedDate: FormatDateUtil.formatDate(DateTime.now().subtract(Duration(days: 14))),
    ),
    FileImagesModel(
      image: "assets/images/cute-panda.png",
      name: "Abstract Modern Art",
      startedDate: FormatDateUtil.formatDate(DateTime.now().subtract(Duration(days: 20))),
    ),
    FileImagesModel(
      image: "assets/images/jumpjoustsjam.jpg",
      name: "Mountain Landscape",
      startedDate: FormatDateUtil.formatDate(DateTime.now().subtract(Duration(days: 10))),
    ),
    FileImagesModel(
      image: "assets/images/man.jpg",
      name: "Creative Digital Art",
      startedDate: FormatDateUtil.formatDate(DateTime.now().subtract(Duration(days: 5))),
    ),
    FileImagesModel(
      image: "assets/images/mario.png",
      name: "Floral Watercolor",
      startedDate: FormatDateUtil.formatDate(DateTime.now().subtract(Duration(days: 18))),
    ),
    FileImagesModel(
      image: "assets/images/minior.jpeg",
      name: "Colorful Cinematic Scene",
      startedDate: FormatDateUtil.formatDate(DateTime.now().subtract(Duration(days: 8))),
    ),
  ];
}
