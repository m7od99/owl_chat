import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:owl_chat/logic/bloc/message_bloc/message_bloc.dart';

class MessageBlocMock extends MockBloc<MessageEvent, MessageState> implements MessageBloc {}

void main() {
  final MessageBlocMock messageBlocMock = MessageBlocMock();

  whenListen(
    messageBlocMock,
    messageBlocMock.stream,
  );

  group(
    'messages bloc test',
    () {
      blocTest<MessageBloc, MessageState>(
        'test open chat',
        build: () => MessageBloc(),
        act: (bloc) => bloc.add(
          const OpenChat(
            chatId: '1',
            receiver: '',
            sender: '',
          ),
        ),
        expect: () {},
      );
    },
  );
}
