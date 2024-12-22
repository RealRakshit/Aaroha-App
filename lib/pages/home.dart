import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // backgroundColor: ,
        body: Center(
          child: Container(
            height: 300,
            color: Theme.of(context).colorScheme.surface,
          ),
        ),
    );
  }
}