import 'package:flutter/material.dart';
import 'package:giphy_get/giphy_get.dart';

class Giphy {
  final GiphyClient client = GiphyClient(apiKey: 'OhchXW2GJnCabq2ge2fBHYQAoqYgtOFJ', randomId: '');

  static Future<GiphyGif?> pickGif(BuildContext context) async {
    return GiphyGet.getGif(
      context: context,
      searchText: 'Search',
      apiKey: 'OhchXW2GJnCabq2ge2fBHYQAoqYgtOFJ',
    );
  }
}
