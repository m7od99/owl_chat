import 'dart:developer';

import 'package:owl_chat/data/data_controller/update_control.dart';
import 'package:owl_chat/data/models/update.dart';
import 'package:package_info/package_info.dart';
import 'package:r_upgrade/r_upgrade.dart';
import 'package:version/version.dart';

class CheckUpdate {
  Future isNewUpdate() async {
    final _info = await PackageInfo.fromPlatform();

    final currentVersion = Version.parse(_info.version);
    Version? latestVersion; // from server

    final UpdateControl control = UpdateControl();

    final Update? status = await control.getUpdateStatus();
    latestVersion = Version.parse(status!.newVersions);

    log(latestVersion.toString());

    if (latestVersion > currentVersion) {
      log('update is available ');
      await upgrade(status.uri);
    }
  }

  Future upgrade(String uri) async {
    await RUpgrade.upgrade(
      uri,
      fileName: 'app-release.apk',
    );
  }
}
