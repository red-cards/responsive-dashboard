import 'package:flutter/material.dart';
import 'package:responsive_dashboard/constant.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return const Drawer(
      backgroundColor: SECONDARY_COLOR,
      child: Column(children: [
        DrawerHeader(
          margin: EdgeInsets.all(0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(radius: 30),
              SizedBox(
                width: 16,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('John Doe'),
                  Text('Administrator'),
                ],
              ),
            ],
          ),
        ),
        ListTile(
          leading: Icon(Icons.grid_view_outlined),
          title: Text('D A S H B O A R D'),
        ),
        ListTile(
          leading: Icon(Icons.shopping_cart),
          title: Text('T R A N S A C T I O N'),
        ),
        ListTile(
          leading: Icon(Icons.settings),
          title: Text('S E T T I N G'),
        ),
      ]),
    );
  }
}
