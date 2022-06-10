import 'package:hive/hive.dart';
import 'package:owl_chat/data/data_controller/message_control/local_message_control.dart';
import 'package:owl_chat/data/models/chats/message_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:test/test.dart';

Future main() async {
  final path = await getApplicationDocumentsDirectory();
  Hive.init(path.path);

  final local = LocalMessageControl(chatId: '1');
  await local.ready();
  final time = DateTime.now();

  final message = MessageModel(
    receiver: '',
    sender: '',
    text: 'hive',
    time: time,
    id: '10',
  );

  await local.addMessage(message, '1');

  final messageFromLocal = local.getMessage(0);
  test('test local data', () {
    expect(true, message.text == messageFromLocal.text);
  });
}
