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
      image: "https://m.media-amazon.com/images/I/71qTm-Xrh0L._AC_UF1000,1000_QL80_.jpg",
      name: "Elegant Design Poster",
      startedDate: FormatDateUtil.formatDate(DateTime.now().subtract(Duration(days: 3))),
    ),
    FileImagesModel(
      image: "https://thumbs.dreamstime.com/b/cute-baby-elephant-flowers-butterfly-watercolor-art-wildlife-splash-art-cartoon-style-blue-sky-cute-baby-elephant-323968612.jpg",
      name: "Baby Elephant Illustration",
      startedDate: FormatDateUtil.formatDate(DateTime.now().subtract(Duration(days: 7))),
    ),
    FileImagesModel(
      image: "https://thumbs.dreamstime.com/b/cute-panda-cartoon-big-eyes-sitting-isolated-white-background-owl-320854001.jpg",
      name: "Adorable Panda Artwork",
      startedDate: FormatDateUtil.formatDate(DateTime.now().subtract(Duration(days: 14))),
    ),
    FileImagesModel(
      image: "https://i.pinimg.com/236x/ff/1e/4d/ff1e4d2a0fc1e39f4ef5303e9108b269.jpg",
      name: "Abstract Modern Art",
      startedDate: FormatDateUtil.formatDate(DateTime.now().subtract(Duration(days: 20))),
    ),
    FileImagesModel(
      image: "https://images.unsplash.com/photo-1515041219749-89347f83291a?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8Y2FydG9vbnxlbnwwfHwwfHx8MA%3D%3D",
      name: "Mountain Landscape",
      startedDate: FormatDateUtil.formatDate(DateTime.now().subtract(Duration(days: 10))),
    ),
    FileImagesModel(
      image: "https://i.pinimg.com/736x/6b/30/9a/6b309a2ccde102f45ef6c4e5c3f40052.jpg",
      name: "Creative Digital Art",
      startedDate: FormatDateUtil.formatDate(DateTime.now().subtract(Duration(days: 5))),
    ),
    FileImagesModel(
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQw6uGUhaloL1hvXm49h-r5hjtDhG5_yFn9BA&s",
      name: "Floral Watercolor",
      startedDate: FormatDateUtil.formatDate(DateTime.now().subtract(Duration(days: 18))),
    ),
    FileImagesModel(
      image: "https://i.ytimg.com/vi/VYDmIkvZ570/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLBUa2JhCFcvxfmhD5a0LpSKCWE7Wg",
      name: "Colorful Cinematic Scene",
      startedDate: FormatDateUtil.formatDate(DateTime.now().subtract(Duration(days: 8))),
    ),
    FileImagesModel(
      image: "https://static.vecteezy.com/system/resources/thumbnails/028/794/707/small_2x/cartoon-cute-school-boy-photo.jpg",
      name: "School Boy Cartoon",
      startedDate: FormatDateUtil.formatDate(DateTime.now().subtract(Duration(days: 22))),
    ),
    FileImagesModel(
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDZrr9gEagq7aPSDPON6vMgUt00lUdU-VCRA&s",
      name: "Portrait Illustration",
      startedDate: FormatDateUtil.formatDate(DateTime.now().subtract(Duration(days: 12))),
    ),
  ];
}
