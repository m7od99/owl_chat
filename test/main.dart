import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:owl_chat/data/models/message.dart';

void main() {
  final Message message = Message(
    text: '',
    receiver: '',
    sender: '',
    time: Timestamp.now(),
    isMe: true,
  );
  test('test if message is valid', () {
    expect(message.text, '');
  });
}
