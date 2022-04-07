import 'package:flutter/material.dart';

import '../../theme.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
    required this.name,
    required this.description,
  }) : super(key: key);

  final String name;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(top: 125),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
              margin: const EdgeInsets.only(bottom: 20),
              width: 160,
              height: 160,
              child: Image.asset('assets/images/avatar.png')),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: Text(
              name,
              style: const TextStyle(fontSize: 18, color: primaryTextColor),
            ),
          ),
          Text(
            description,
            style: const TextStyle(fontSize: 12, color: secondaryTextColor),
          )
        ],
      ),
    );
  }
}
