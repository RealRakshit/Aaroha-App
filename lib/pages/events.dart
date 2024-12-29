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
           const EventCard(

              title: 'Aavishkaar',
              about:
              'Underprivileged children from the slums also participated, emphasizing the joyful aspect of learning. Aarohians provided mentorship, elevating the quality of these projects.',
              mission:
              'Aavishkar aimed to promote scientific temperament in children and simplify scientific concepts through projects, interactive displays and educational workshops. ',
              image1: 'lib/images/big_image.jpg',
              image2: 'lib/images/avishkar.jpg',
            ),
           const SizedBox(height: 16),
          const  EventCard(
              title: 'Aasha',
              about:
              'Aasha is a series of events and activities that provide children from underprivileged communities with opportunities to explore and showcase their talents.',
              mission:
              'The mission of Aasha is to nurture the hidden talents of these children and offer them a stage to confidently present their abilities. ',
              image1: 'lib/images/aasha.jpg',
              image2: 'lib/images/anand.jpg',
            ),
           const SizedBox(height: 16),
           const EventCard(
              title: 'A Se Ah',
              about:
              '‘A se Ah’ is an annual event conducted under Project Anand by Aaroha. It recreates the spirit of an annual school function for the underprivileged children.',
              mission:
              'Aaroha envisions ‘A se Ah’ as a means to dispel the sense of inadequacy that often plagues children who lack access to traditional educational opportunities.',
              image1: 'lib/images/a_se_ah.jpg',
              image2: 'lib/images/a_se_ah2.jpg',
            ),
           const SizedBox(height: 16),
           const EventCard(
              title: 'Aakar',
              about:
              'Initiated in 2014, Project Aakar aims at the holistic development of children. Each weekend, diverse activities are organized to equip them with multidisciplinary skills.',
              mission:
              'Aakar’s core aim is to shape the character, personality, and thought process of children. We strive to guide them in navigating the world around them.',
              image1: 'lib/images/aakar.jpg',
              image2: 'lib/images/aakar2.jpg',
            ),
           const SizedBox(height: 16),
          const  EventCard(
              title: 'Fund Raising',
              about:
              'Every year, on Independence Day (15th August) and Republic Day (26th January), Aaroha organizes fundraising events across different locations in Bhopal.',
              mission:
              'The mission of these fundraising events is to expand the reach and impact of Aaroha’s projects and initiatives. We also aim to raise awareness among the general public.',
              image1: 'lib/images/fund_raising.jpg',
              image2: 'lib/images/aahar.jpg',
            ),
           const SizedBox(height: 16),
          const  EventCard(
              title: 'Unmilanam',
              about:
              'Unmilanam is an event designed to celebrate the essence of the Indian education system. A distinguished guest is invited to speak about the importance of education.',
              mission:
              'The mission of Unmilanam is to keep children informed and engaged with the values and traditions of the Indian education system, while they remain connected to cultural and educationsl roots.',
              image1: 'lib/images/unmilnam.jpg',
              image2: 'lib/images/akshar.jpg',
            ),
           const SizedBox(height: 16),
          const  EventCard(
              title: 'Alankaran',
              about:
              'Alankaran is a formal event organized to honor the outgoing final-year management team of Aaroha and to recognize the dedication and hard work of volunteers.',
              mission:
              'This event serves as a platform to bid farewell to the senior team and to reward volunteers with special awards for their exceptional efforts and commitment.',
              image1: 'lib/images/alankaran.jpg',
              image2: 'lib/images/pradan.jpg',
            ),
          ],
        ),
      ),
    );
  }
}


// Widget for Event Cards
class EventCard extends StatelessWidget {
  final String title;
  final String about;
  final String mission;
  final String image1;
  final String image2;

  const  EventCard({
    required this.title,
    required this.about,
    required this.mission,
    required this.image1,
    required this.image2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(

        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset:const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Container(
            margin:const EdgeInsets.all(8),
             padding:const EdgeInsets.fromLTRB(30, 10, 30, 10),
            decoration: BoxDecoration(

              color: Colors.white,
                borderRadius: BorderRadius.circular(40),
            ),
            child: Center(
              child: Text(
                title,
                style:const  TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                 color:Color(0xFF187B9D),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                // About Section
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        image1,
                        width: 120,
                        height: 130,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                         const Text(
                            'ABOUT:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white,
                            ),

                          ),
                          const SizedBox(height: 4),
                          Text(about,style: const TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                // Mission Section
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'MISSION:',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(height: 4),
                           Text(mission,style: const TextStyle(

                             fontSize: 12,
                             color: Colors.white,
                          ),),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        image2,
                        width: 100,
                        height: 120,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}