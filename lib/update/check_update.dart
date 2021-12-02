// class CheckUpdate {
//   Future isNewUpdate() async {
//     final _info = await PackageInfo.fromPlatform();
//
//     final currentVersion = Version.parse(_info.version);
//     Version? latestVersion; // from server
//
//     final UpdateControl control = UpdateControl();
//
//     final Update? status = await control.getUpdateStatus();
//     latestVersion = Version.parse(status!.newVersions);
//
//     log(latestVersion.toString());
//
//     if (latestVersion > currentVersion) {
//       log('update is available ');
//       await upgrade(status.uri);
//     }
//   }
//
//   Future upgrade(String uri) async {
//     await RUpgrade.upgrade(
//       uri,
//       fileName: 'app-release.apk',
//     );
//   }
// }
