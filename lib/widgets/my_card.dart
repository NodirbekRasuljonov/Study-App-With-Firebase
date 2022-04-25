import 'package:flutter/material.dart';

class MyCard {
  static Card categories(
      {Icon? iconData,
      required String text,
      required String route,
      required BuildContext context}) {
    return Card(
      margin: const EdgeInsets.all(5.0),
      child: ListTile(
        onTap: () {
            Navigator.pushNamed(context, route);
          },
        leading: iconData != null
            ? CircleAvatar(
                backgroundColor: const Color(0xffdcf0f9),
                child: iconData,
              )
            : SizedBox(),
        title: Text(text),
        trailing: const Icon(
            Icons.chevron_right,
          ),
        ),
      );
    
  }
}

class MyCard2 {
  static Card categories(
      {required String text,
      required String route,
      required BuildContext context}) {
    return Card(
      margin: const EdgeInsets.all(5.0),
      child: ListTile(
        onTap: () {
          Navigator.pushNamed(context, route);
        },
        title: Text(text),
        trailing: const Icon(
          Icons.chevron_right,
        ),
      ),
    );
  }
}
