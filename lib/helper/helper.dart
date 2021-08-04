import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';

class Helper {
  static String format(Timestamp time) {
    return DateFormat('hh:mm a').format(time.toDate());
  }
}
