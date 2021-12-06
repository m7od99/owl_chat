// ignore_for_file: avoid_print

import 'package:flutter/cupertino.dart';
import 'package:owl_chat/data/data_controller/update_control.dart';
import 'package:owl_chat/data/models/app/update.dart';
import 'package:package_info/package_info.dart';
import 'package:r_upgrade/r_upgrade.dart';
import 'package:version/version.dart';

class UpdateManger extends ChangeNotifier {
  factory UpdateManger() {
    return _instance;
  }

  late final PackageInfo runVersion;
  late final Update? update;
  static final UpdateManger _instance = UpdateManger._init();

  UpdateManger._init() {
    _sign();
    _getCurrentVersionInfo();
    notifyListeners();
  }

  Future _sign() async {
    return runVersion = await PackageInfo.fromPlatform();
  }

  Stream<bool> isNewUpdate() async* {
    final runningVersion = Version.parse(runVersion.version);
    final latestVersion = Version.parse(update!.newVersions);

    if (latestVersion > runningVersion) {
      yield true;
    } else {
      yield false;
    }
  }

  bool checkFroUpdate() {
    final runningVersion = Version.parse(runVersion.version);
    final latestVersion = Version.parse(update!.newVersions);

    if (latestVersion > runningVersion) {
      return true;
    } else {
      return false;
    }
  }

  Future _getCurrentVersionInfo() async {
    final UpdateControl control = UpdateControl();
  }

  Future upgrade(String uri) async {
    await RUpgrade.upgrade(
      uri,
      //fileName: 'app-release.apk',
    );
  }
}
