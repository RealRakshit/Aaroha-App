import 'package:aaroha/theme/theme.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final dynamic title;
  final dynamic titleTheme;
  final dynamic iconColor;


   const CustomAppBar({super.key,required this.title,required this.titleTheme,required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 28),
        child: AppBar(
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 13.0),
            child: Text(
              title,
              style:titleTheme,
            ),
          ),
          leading: IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();//Open drawer on icon tap
            },
            icon: const Icon(Icons.menu),
            iconSize: 48,
            color:iconColor,
          ),
        ));
  }
}
