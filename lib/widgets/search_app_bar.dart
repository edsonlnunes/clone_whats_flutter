import 'package:flutter/material.dart';

class SearchAppBar extends StatelessWidget implements PreferredSizeWidget {
  final void Function() hideSearchAppBar;

  const SearchAppBar({Key key, this.hideSearchAppBar}) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 10,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Theme.of(context).primaryColor,
        ),
        onPressed: hideSearchAppBar,
      ),
      title: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: 'Pesquisar...',
        ),
      ),
    );
  }
}
