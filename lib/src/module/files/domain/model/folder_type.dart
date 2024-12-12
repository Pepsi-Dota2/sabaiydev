import 'package:flutter/material.dart';
import 'package:sabaiydev/src/core/utils/format_date.dart';

class FolderTypeModel {
  final String name;
  final IconData icon;
  final String? startedDate;

  FolderTypeModel({required this.name, required this.icon, this.startedDate});

  static final List<FolderTypeModel> folderData = [
    FolderTypeModel(
      name: "Work Documents",
      icon: Icons.folder,
      startedDate:  FormatDateUtil.formatDate(DateTime.now().subtract(Duration(days: 2))),
    ),
    FolderTypeModel(
      name: "Personal Projects",
      icon: Icons.folder,
      startedDate:  FormatDateUtil.formatDate(DateTime.now().subtract(Duration(days: 10))),
    ),
    FolderTypeModel(
      name: "Vacation Photos",
      icon: Icons.folder,
      startedDate:  FormatDateUtil.formatDate(DateTime.now().subtract(Duration(days: 30))),
    ),
    FolderTypeModel(
      name: "Downloaded ",
      icon: Icons.folder,
      startedDate:  FormatDateUtil.formatDate(DateTime.now().subtract(Duration(days: 5))),
    ),
    FolderTypeModel(
      name: "Shared Files",
      icon:Icons.folder,
      startedDate:  FormatDateUtil.formatDate(DateTime.now().subtract(Duration(days: 7))),
    ),
    FolderTypeModel(
      name: "Music Library",
      icon: Icons.folder,
      startedDate:  FormatDateUtil.formatDate(DateTime.now().subtract(Duration(days: 20))),
    ),
    FolderTypeModel(
      name: "Meeting Notes",
      icon: Icons.folder,
      startedDate:  FormatDateUtil.formatDate(DateTime.now().subtract(Duration(days: 15))),
    ),
  ];

}
