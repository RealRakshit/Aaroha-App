import 'package:aaroha/components/app_bar.dart';
import 'package:aaroha/components/app_drawer1.dart';
import 'package:flutter/material.dart';

class DonatePage extends StatelessWidget {
  const DonatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              title: "Donate",
              titleTheme: Theme.of(context).textTheme.titleLarge,
              iconColor: Theme.of(context).colorScheme.primary,
            ),
          ],
        ),
      ),
    );
  }
}
