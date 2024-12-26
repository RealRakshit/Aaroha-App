import 'package:aaroha/components/app_bar.dart';
import 'package:flutter/material.dart';

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            CustomAppBar(
              title: "Events",
              titleTheme: Theme.of(context).textTheme.titleLarge,
              iconColor: Theme.of(context).colorScheme.primary,
            ),
          ],
        ),
      ),
    );
  }
}