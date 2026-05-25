import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String, dynamic>> habits = [

      {
        "title": "Morning Meditation",
        "subtitle": "10 mins mindfulness practice",
        "icon": Icons.self_improvement,
      },

      {
        "title": "Drink Water",
        "subtitle": "Track daily hydration",
        "icon": Icons.water_drop,
      },

      {
        "title": "Exercise",
        "subtitle": "30 mins daily workout",
        "icon": Icons.fitness_center,
      },
    ];

    return Scaffold(

      backgroundColor: const Color(0xffF6F7F2),

      appBar: AppBar(

        backgroundColor: Colors.white,
        elevation: 0,

        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.black,
          ),

          onPressed: () {},
        ),

        title: Row(
          children: [

            const Icon(
              Icons.spa,
              color: Colors.green,
            ),

            const SizedBox(width: 10),

            Text(
              "Serene",

              style: GoogleFonts.poppins(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            Text(
              "Welcome Back 👋",

              style: GoogleFonts.poppins(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            Text(
              "Track your habits and improve your wellness journey.",

              style: GoogleFonts.poppins(
                color: Colors.grey.shade700,
              ),
            ),

            const SizedBox(height: 30),

            Expanded(

              child: ListView.builder(

                itemCount: habits.length,

                itemBuilder: (context, index) {

                  final habit = habits[index];

                  return GestureDetector(

                    onTap: () {

                      Navigator.push(
                        context,

                        MaterialPageRoute(

                          builder: (context) => DetailScreen(
                            title: habit["title"],
                            subtitle: habit["subtitle"],
                          ),
                        ),
                      );
                    },

                    child: Container(

                      margin: const EdgeInsets.only(bottom: 20),
                      padding: const EdgeInsets.all(20),

                      decoration: BoxDecoration(
                        color: Colors.white,

                        borderRadius: BorderRadius.circular(25),

                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 10,
                          ),
                        ],
                      ),

                      child: Row(

                        children: [

                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.green.shade100,

                            child: Icon(
                              habit["icon"],
                              color: Colors.green,
                            ),
                          ),

                          const SizedBox(width: 20),

                          Expanded(

                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,

                              children: [

                                Text(
                                  habit["title"],

                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),

                                const SizedBox(height: 5),

                                Text(
                                  habit["subtitle"],

                                  style: GoogleFonts.poppins(
                                    color: Colors.grey.shade700,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const Icon(Icons.arrow_forward_ios),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}