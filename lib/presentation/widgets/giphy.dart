import 'package:giphy_get/giphy_get.dart';

Future<GiphyClient> getGiphy() async {
  GiphyClient client = await GiphyClient(
    apiKey: 'OhchXW2GJnCabq2ge2fBHYQAoqYgtOFJ',
    randomId: '',
  );
  return client;
}
