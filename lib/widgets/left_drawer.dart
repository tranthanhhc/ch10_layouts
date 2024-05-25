import 'package:ch10_layouts/widgets/menu_list_tile.dart';
import 'package:flutter/material.dart';

class LeftDrawerWidget extends StatelessWidget {
  const LeftDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const <Widget>[
          UserAccountsDrawerHeader(
              accountName: Text('Phil Foden'),
              accountEmail:  Text('phil.foden@domainname.com'),
              otherAccountsPictures: <Widget>[
                Icon(
                  Icons.bookmark_border,
                  color: Colors.white,
                )
              ],
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/images/salmon.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
           MenuListTileWidget(),
        ],
      ),
    );
  }
}
