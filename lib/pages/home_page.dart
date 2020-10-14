import 'package:flutter/material.dart';
import 'package:wpp_clone/pages/chats_page.dart';
import 'package:wpp_clone/widgets/custom_app_bar.dart';
import 'package:wpp_clone/widgets/search_app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  TabController _controller;
  bool isSearch = false;

  @override
  void initState() {
    super.initState();

    _controller = TabController(
      length: 3,
      initialIndex: 0,
      vsync: this,
    );

    _controller.addListener(() {
      setState(() {
        isSearch = false;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void showSearchAppBar() {
    setState(() {
      isSearch = true;
    });
  }

  void hideSearchAppBar() {
    setState(() {
      isSearch = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isSearch
          ? SearchAppBar(
              hideSearchAppBar: hideSearchAppBar,
            )
          : CustomAppBar(
              controller: _controller,
              showSearchAppBar: showSearchAppBar,
            ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          ChatsPage(),
          Text('Páginas statys'),
          Text('Páginas chamadas'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.chat,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
    );
  }
}
