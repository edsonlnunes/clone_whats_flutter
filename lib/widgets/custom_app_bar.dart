import 'package:flutter/material.dart';
import 'package:wpp_clone/controllers/theme_controller.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TabController controller;
  final void Function() showSearchAppBar;

  const CustomAppBar({Key key, this.controller, this.showSearchAppBar})
      : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight + 49);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('WhatsApp'),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search),
          onPressed: showSearchAppBar,
        ),
        PopupMenuButton(
          onSelected: (int value) {
            if (value == 6) {
              ThemeController.themeMode.value =
                  ThemeController.themeMode.value == ThemeMode.light
                      ? ThemeMode.dark
                      : ThemeMode.light;
            }
          },
          itemBuilder: (_) {
            return [
              PopupMenuItem(
                child: Text('Novo grupo'),
                value: 1,
              ),
              PopupMenuItem(
                child: Text('Nova transmissão'),
                value: 2,
              ),
              PopupMenuItem(
                child: Text('WhatsApp Web'),
                value: 3,
              ),
              PopupMenuItem(
                child: Text('Mensagens favoritas'),
                value: 4,
              ),
              PopupMenuItem(
                child: Text('Configurações'),
                value: 5,
              ),
              PopupMenuItem(
                child: Text('Alterar tema'),
                value: 6,
              ),
            ];
          },
        )
      ],
      bottom: TabBar(
        controller: controller,
        indicatorColor: Colors.white,
        indicatorWeight: 3,
        tabs: <Widget>[
          Tab(
            text: 'CONVERSAS',
          ),
          Tab(
            text: 'STATUS',
          ),
          Tab(
            text: 'CHAMADAS',
          ),
        ],
      ),
    );
  }
}
