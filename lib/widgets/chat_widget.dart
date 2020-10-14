import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  final String lastTalk;
  final int qtdNewMessages;

  const ChatWidget({this.lastTalk, this.qtdNewMessages});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage('assets/goku.jpg'),
      ),
      title: Text(
        'Growdev',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: Text(
        'Lorem Ipsum is simply dummy text of ',
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Column(
        children: <Widget>[
          Text(
            lastTalk,
            style: TextStyle(
              color: qtdNewMessages > 0
                  ? Theme.of(context).accentColor
                  : Theme.of(context).textTheme.bodyText2.color,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          if (qtdNewMessages > 0)
            Container(
              padding: EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: Theme.of(context).accentColor,
                shape: BoxShape.circle,
              ),
              child: Text(
                qtdNewMessages.toString(),
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            )
        ],
      ),
    );
  }
}
