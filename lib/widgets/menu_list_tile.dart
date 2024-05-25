import 'package:flutter/material.dart';

class MenuListTileWidget extends StatefulWidget {
  const MenuListTileWidget({super.key});

  @override
  State<MenuListTileWidget> createState() => _MenuListTileWidgetState();
}

class _MenuListTileWidgetState extends State<MenuListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.cake),
          title: Text('Birthdays'),
        ),
        ListTile(
          leading:  Icon(Icons.sentiment_satisfied),
          title: Text('Birthdays'),
        ),
        ListTile(
          leading:  Icon(Icons.alarm),
          title: Text('Birthdays'),
            // onTap: () { // chuyển trang
            //   Navigator.pop(context);
            //   Navigator.push(
            //     context,
            //     MaterialPageRoute(
            //       builder: (context) => Reminders(),
            //     ),
            //   );
            // },
        ),
        Divider(color: Colors.grey),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('Setting'),
        ),
      ],
    );
  }
}
