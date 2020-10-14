import 'package:flutter/material.dart';
import 'package:wpp_clone/widgets/chat_widget.dart';

class ChatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_, __) => Divider(),
      itemCount: 20,
      itemBuilder: (_, index) {
        return ChatWidget(
          lastTalk: index % 3 == 0 ? 'Ontem' : '21:58',
          qtdNewMessages: index % 3 == 0 ? index : 0,
        );
      },
    );
  }
}
