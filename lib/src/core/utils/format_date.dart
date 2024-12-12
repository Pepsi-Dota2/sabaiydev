import 'package:easy_localization/easy_localization.dart';

class FormatDateUtil{
    static String formatDate(DateTime date) {
    return DateFormat('yyyy-MM-dd').format(date);
  }
}