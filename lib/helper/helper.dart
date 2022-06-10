import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart' as m;

// ignore: avoid_classes_with_only_static_members
class Helper {
  static String format(Timestamp time) {
    return DateFormat('hh:mm a').format(time.toDate());
  }

  static m.TextDirection getDirection(String v) {
    final string = v.trim();
    if (string.isEmpty) return m.TextDirection.ltr;
    final firstUnit = string.codeUnitAt(0);
    if (firstUnit > 0x0600 && firstUnit < 0x06FF ||
        firstUnit > 0x0750 && firstUnit < 0x077F ||
        firstUnit > 0x07C0 && firstUnit < 0x07EA ||
        firstUnit > 0x0840 && firstUnit < 0x085B ||
        firstUnit > 0x08A0 && firstUnit < 0x08B4 ||
        firstUnit > 0x08E3 && firstUnit < 0x08FF ||
        firstUnit > 0xFB50 && firstUnit < 0xFBB1 ||
        firstUnit > 0xFBD3 && firstUnit < 0xFD3D ||
        firstUnit > 0xFD50 && firstUnit < 0xFD8F ||
        firstUnit > 0xFD92 && firstUnit < 0xFDC7 ||
        firstUnit > 0xFDF0 && firstUnit < 0xFDFC ||
        firstUnit > 0xFE70 && firstUnit < 0xFE74 ||
        firstUnit > 0xFE76 && firstUnit < 0xFEFC ||
        firstUnit > 0x10800 && firstUnit < 0x10805 ||
        firstUnit > 0x1B000 && firstUnit < 0x1B0FF ||
        firstUnit > 0x1D165 && firstUnit < 0x1D169 ||
        firstUnit > 0x1D16D && firstUnit < 0x1D172 ||
        firstUnit > 0x1D17B && firstUnit < 0x1D182 ||
        firstUnit > 0x1D185 && firstUnit < 0x1D18B ||
        firstUnit > 0x1D1AA && firstUnit < 0x1D1AD ||
        firstUnit > 0x1D242 && firstUnit < 0x1D244) {
      return m.TextDirection.rtl;
    }
    return m.TextDirection.ltr;
  }

  static String readTimestamp(Timestamp timestamp) {
    final now = DateTime.now();
    final format = DateFormat('hh:mm a');
    final diffYearFormat = DateFormat('dd/MM/yyyy');
    final diffFormat = DateFormat('dd/MM');

    final DateTime date = timestamp.toDate();

    final diff = now.difference(date);
    var time = '';

    if (diff.inSeconds <= 0 ||
        diff.inSeconds > 0 && diff.inMinutes == 0 ||
        diff.inMinutes > 0 && diff.inHours == 0 ||
        diff.inHours > 0 && diff.inDays == 0) {
      time = format.format(date);
    } else {
      if (diff.inDays == 1) {
        time = '${diff.inDays} day ago';
      } else if (diff.inDays <= 6) {
        time = '${diff.inDays} days ago';
      } else {
        if (now.year - date.year >= 1) {
          time = diffYearFormat.format(date);
        } else {
          time = diffFormat.format(date);
        }
      }
    }

    return time;
  }
}
