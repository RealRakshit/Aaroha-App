import 'package:aaroha/components/app_bar.dart';
import 'package:aaroha/components/app_drawer1.dart';
import 'package:flutter/material.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: const AppDrawer(),
      appBar: PreferredSize(preferredSize: const Size.fromHeight(90),
        child: CustomAppBar(
          title: "Projects",
          titleTheme: Theme.of(context).textTheme.titleLarge,
          iconColor: Theme.of(context).colorScheme.primary,
        ),
      ),
      body:  const Padding(
        padding: EdgeInsets.only(top: 5.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
             EventCard(
                title: "Akshar",
                description:
                "A simple but powerful reminder of the positive domino effect a good education can have on many aspects of a person's life and outlook. Aim of Project Akshar: Daily classes at the center for underprivileged children.",
                imageUrl: "lib/images/akshar.jpg", // Replace with your asset path
              ),
             SizedBox(height: 16), // Add spacing between events

              // Event 2: Anand
             EventCard(
                title: "Anand",
                description:
                "This project was begun back in 2014 with an aim to provide quality education to underprivileged societies. This project beliefs nurturing and shaping minds of children.",
                imageUrl: "lib/images/big_image.jpg", // Replace with your asset path
              ),
             SizedBox(height: 16),

              // Event 3: Aahar
            EventCard(
                title: "Aahar",
                description:
                "In project Aahar, volunteers of IHM Chapter organise food drives which take place on every Sunday. They prepare and provide nutrition rich food for undernourished children and families of slum areas.",
                imageUrl: "lib/images/aahar.jpg", // Replace with your asset path
              ),
            SizedBox(height: 16),

              // Event 4: Pradan
             EventCard(
                title: "Pradan",
                description:
                "This project aims to provide essential resources to the underprivileged children as per the requirements. These resources range from providing nutrition rich food items to medicines, from clothes to sanitary napkins. ",
                imageUrl: "lib/images/alankaran.jpg", // Replace with your asset path
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const EventCard({
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).cardColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 6,
      child: Padding(
        padding:const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Title with rounded decoration
            Container(
              padding:const EdgeInsets.symmetric(horizontal: 30, vertical: 7),
              decoration: BoxDecoration(
                color: Colors.white, // Background color
                borderRadius: BorderRadius.circular(25), // Rounded edges
              ),
              child: Text(
                title,
                style:const TextStyle(
                  color: Color(0xFF187B9D),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            // Image
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imageUrl,
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            // Description
            Text(
              description,
              textAlign: TextAlign.center,
              style:const TextStyle(
                fontSize: 15,fontWeight:FontWeight.bold,
                color:Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}